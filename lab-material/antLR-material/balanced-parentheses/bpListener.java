// Generated from bp.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link bpParser}.
 */
public interface bpListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link bpParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(bpParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link bpParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(bpParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link bpParser#start}.
	 * @param ctx the parse tree
	 */
	void enterStart(bpParser.StartContext ctx);
	/**
	 * Exit a parse tree produced by {@link bpParser#start}.
	 * @param ctx the parse tree
	 */
	void exitStart(bpParser.StartContext ctx);
	/**
	 * Enter a parse tree produced by {@link bpParser#data}.
	 * @param ctx the parse tree
	 */
	void enterData(bpParser.DataContext ctx);
	/**
	 * Exit a parse tree produced by {@link bpParser#data}.
	 * @param ctx the parse tree
	 */
	void exitData(bpParser.DataContext ctx);
}