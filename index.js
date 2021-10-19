import React from 'react';
import { InputText } from '@bit/primefaces.primereact.inputtext';
import PrimereactStyle from '@bit/primefaces.primereact.internal.stylelinks';

class Example extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			value: null
		};
	}

	render() {
		return (
			<div>
				<PrimereactStyle />
				<h3>Basic</h3>
				<br />
				<InputText
					value={this.state.value}
					onChange={e => this.setState({ value: e.target.value })}
				/>
				<span style={{ marginLeft: '.5em' }}>{this.state.value}</span>
			</div>
		);
	}
}

export default <Example />;