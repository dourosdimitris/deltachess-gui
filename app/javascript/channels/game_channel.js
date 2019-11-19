import consumer from "./consumer"

consumer.subscriptions.create("GameChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to game.");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Recieving:");
    console.log(data.content);
    $('#fens').prepend(`<li>${data.content}</li>`);//html(data.content);
    var status = data.content;
    board1.position(status);
  }
});
