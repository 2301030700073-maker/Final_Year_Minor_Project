package org.mozilla.javascript.optimizer;

import java.util.List;
import java.util.Map;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.NodeTransformer;
import org.mozilla.javascript.ast.ScriptNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class OptTransformer extends NodeTransformer {
    private List<OptFunctionNode> directCallTargets;
    private Map<String, OptFunctionNode> possibleDirectCalls;

    public OptTransformer(Map<String, OptFunctionNode> map, List<OptFunctionNode> list) {
        this.possibleDirectCalls = map;
        this.directCallTargets = list;
    }

    private void detectDirectCall(Node node, ScriptNode scriptNode) {
        String str;
        OptFunctionNode optFunctionNode;
        if (scriptNode.getType() == 122) {
            Node firstChild = node.getFirstChild();
            int i = 0;
            if (firstChild != null) {
                Node next = firstChild.getNext();
                while (next != null) {
                    next = next.getNext();
                    i++;
                }
            }
            if (i == 0) {
                OptFunctionNode.get(scriptNode).itsContainsCalls0 = true;
            }
            if (this.possibleDirectCalls != null) {
                if (firstChild.getType() == 44) {
                    str = firstChild.getString();
                } else if (firstChild.getType() == 33) {
                    str = firstChild.getFirstChild().getNext().getString();
                } else {
                    if (firstChild.getType() == 34) {
                        throw Kit.codeBug();
                    }
                    str = null;
                }
                if (str == null || (optFunctionNode = this.possibleDirectCalls.get(str)) == null || i != optFunctionNode.fnode.getParamCount() || optFunctionNode.fnode.requiresActivation() || i > 32) {
                    return;
                }
                node.putProp(9, optFunctionNode);
                if (optFunctionNode.isTargetOfDirectCall()) {
                    return;
                }
                int size = this.directCallTargets.size();
                this.directCallTargets.add(optFunctionNode);
                optFunctionNode.setDirectTargetIndex(size);
            }
        }
    }

    @Override // org.mozilla.javascript.NodeTransformer
    public void visitCall(Node node, ScriptNode scriptNode) {
        detectDirectCall(node, scriptNode);
        super.visitCall(node, scriptNode);
    }

    @Override // org.mozilla.javascript.NodeTransformer
    public void visitNew(Node node, ScriptNode scriptNode) {
        detectDirectCall(node, scriptNode);
        super.visitNew(node, scriptNode);
    }
}
