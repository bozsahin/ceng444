public static class EvalVisitor extends LExprBaseVisitor<Integer> { public Integer visitMult(LExprParser.MultContext ctx) {
return visit(ctx.e(0)) * visit(ctx.e(1)); }
public Integer visitAdd(LExprParser.AddContext ctx) { return visit(ctx.e(0)) + visit(ctx.e(1));
}
public Integer visitInt(LExprParser.IntContext ctx) { return Integer.valueOf(ctx.INT().getText());
} }

