package org.mozilla.javascript;

import org.mozilla.javascript.Parser;
import org.mozilla.javascript.ast.AstNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class IRFactory$$ExternalSyntheticLambda0 implements Parser.Transformer, ContextAction {
    public final /* synthetic */ Object f$0;

    public /* synthetic */ IRFactory$$ExternalSyntheticLambda0(Object obj) {
        this.f$0 = obj;
    }

    @Override // org.mozilla.javascript.ContextAction
    public Object run(Context context) {
        ScriptableObject lambda$runScript$1;
        lambda$runScript$1 = JavaAdapter.lambda$runScript$1((Script) this.f$0, context);
        return lambda$runScript$1;
    }

    @Override // org.mozilla.javascript.Parser.Transformer
    public Node transform(AstNode astNode) {
        Node transform;
        transform = ((IRFactory) this.f$0).transform(astNode);
        return transform;
    }
}
