// Generated from l.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link lParser}.
 */
public interface lListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link lParser#start}.
	 * @param ctx the parse tree
	 */
	void enterStart(lParser.StartContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#start}.
	 * @param ctx the parse tree
	 */
	void exitStart(lParser.StartContext ctx);
	/**
	 * Enter a parse tree produced by {@link lParser#s}.
	 * @param ctx the parse tree
	 */
	void enterS(lParser.SContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#s}.
	 * @param ctx the parse tree
	 */
	void exitS(lParser.SContext ctx);
	/**
	 * Enter a parse tree produced by {@link lParser#def}.
	 * @param ctx the parse tree
	 */
	void enterDef(lParser.DefContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#def}.
	 * @param ctx the parse tree
	 */
	void exitDef(lParser.DefContext ctx);
	/**
	 * Enter a parse tree produced by {@link lParser#e}.
	 * @param ctx the parse tree
	 */
	void enterE(lParser.EContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#e}.
	 * @param ctx the parse tree
	 */
	void exitE(lParser.EContext ctx);
	/**
	 * Enter a parse tree produced by {@link lParser#t}.
	 * @param ctx the parse tree
	 */
	void enterT(lParser.TContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#t}.
	 * @param ctx the parse tree
	 */
	void exitT(lParser.TContext ctx);
	/**
	 * Enter a parse tree produced by {@link lParser#f}.
	 * @param ctx the parse tree
	 */
	void enterF(lParser.FContext ctx);
	/**
	 * Exit a parse tree produced by {@link lParser#f}.
	 * @param ctx the parse tree
	 */
	void exitF(lParser.FContext ctx);
}