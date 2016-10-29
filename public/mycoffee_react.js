  React = require('react');
  ReactDOM = require('react-dom');
  var GreetBox, React, ReactDOM, div, element, h1, ref;
  var ExampleApplication = React.createClass({
        render: function() {
          var message =
            'React has been successfully running time: ' + this.props.time;

          return React.DOM.p(null, message);
        }
      });


  var ExampleApplicationFactory = React.createFactory(ExampleApplication);
        ReactDOM.render(
          ExampleApplicationFactory({elapsed: 4, time:new Date()}),
          document.getElementById('example')
        );
