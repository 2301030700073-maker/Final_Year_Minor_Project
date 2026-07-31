package org.mozilla.javascript;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.ast.Comment;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Node implements Iterable<Node> {
    public static final int ARROW_FUNCTION_PROP = 26;
    public static final int ATTRIBUTE_FLAG = 2;
    public static final int BOTH = 0;
    public static final int CASEARRAY_PROP = 5;
    public static final int CATCH_SCOPE_PROP = 14;
    public static final int CONTROL_BLOCK_PROP = 18;
    public static final int DECR_FLAG = 1;
    public static final int DESCENDANTS_FLAG = 4;
    public static final int DESTRUCTURING_ARRAY_LENGTH = 21;
    public static final int DESTRUCTURING_NAMES = 22;
    public static final int DESTRUCTURING_PARAMS = 23;
    public static final int DIRECTCALL_PROP = 9;
    public static final int END_DROPS_OFF = 1;
    public static final int END_RETURNS = 2;
    public static final int END_RETURNS_VALUE = 4;
    public static final int END_UNREACHED = 0;
    public static final int END_YIELDS = 8;
    public static final int EXPRESSION_CLOSURE_PROP = 25;
    public static final int FUNCTION_PROP = 1;
    public static final int GENERATOR_END_PROP = 20;
    public static final int INCRDECR_PROP = 13;
    public static final int ISNUMBER_PROP = 8;
    public static final int JSDOC_PROP = 24;
    public static final int LABEL_ID_PROP = 15;
    public static final int LAST_PROP = 31;
    public static final int LEFT = 1;
    public static final int LOCAL_BLOCK_PROP = 3;
    public static final int LOCAL_PROP = 2;
    public static final int MEMBER_TYPE_PROP = 16;
    public static final int NAME_PROP = 17;
    public static final int NON_SPECIALCALL = 0;
    private static final Node NOT_SET = new Node(-1);
    public static final int OBJECT_IDS_PROP = 12;
    public static final int OBJECT_LITERAL_DESTRUCTURING = 29;
    public static final int OPTIONAL_CHAINING = 30;
    public static final int PARENTHESIZED_PROP = 19;
    public static final int POST_FLAG = 2;
    public static final int PROPERTY_FLAG = 1;
    public static final int REGEXP_PROP = 4;
    public static final int RIGHT = 2;
    public static final int SKIP_INDEXES_PROP = 11;
    public static final int SPECIALCALL_EVAL = 1;
    public static final int SPECIALCALL_PROP = 10;
    public static final int SPECIALCALL_WITH = 2;
    public static final int SUPER_PROPERTY_ACCESS = 31;
    public static final int TARGETBLOCK_PROP = 6;
    public static final int TEMPLATE_LITERAL_PROP = 27;
    public static final int TRAILING_COMMA = 28;
    public static final int VARIABLE_PROP = 7;
    private int column;
    protected Node first;
    protected Node last;
    protected int lineno;
    protected Node next;
    protected PropListItem propListHead;
    protected int type;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class NodeIterator implements Iterator<Node> {
        private Node cursor;
        private Node prev2;
        private Node prev = Node.NOT_SET;
        private boolean removed = false;

        public NodeIterator() {
            this.cursor = Node.this.first;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.cursor != null;
        }

        @Override // java.util.Iterator
        public Node next() {
            Node node = this.cursor;
            if (node == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            }
            this.removed = false;
            this.prev2 = this.prev;
            this.prev = node;
            this.cursor = node.next;
            return node;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.prev == Node.NOT_SET) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("next() has not been called");
                return;
            }
            if (this.removed) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("remove() already called for current element");
                return;
            }
            Node node = this.prev;
            Node node2 = Node.this;
            if (node == node2.first) {
                node2.first = node.next;
                return;
            }
            Node node3 = node2.last;
            Node node4 = this.prev2;
            if (node != node3) {
                node4.next = this.cursor;
            } else {
                node4.next = null;
                node2.last = node4;
            }
        }
    }

    public Node(int i, Node node, Node node2, Node node3) {
        this.lineno = -1;
        this.column = -1;
        this.type = i;
        this.first = node;
        this.last = node3;
        node.next = node2;
        node2.next = node3;
        node3.next = null;
    }

    private int endCheck() {
        int i = this.type;
        if (i == 4) {
            return this.first != null ? 4 : 2;
        }
        if (i == 55) {
            return 0;
        }
        if (i == 78) {
            return 8;
        }
        if (i == 143 || i == 155) {
            Node node = this.first;
            if (node == null) {
                return 1;
            }
            int i2 = node.type;
            return i2 != 7 ? i2 != 90 ? i2 != 127 ? i2 != 144 ? endCheckBlock() : node.endCheckLabel() : node.endCheckSwitch() : node.endCheckTry() : node.endCheckIf();
        }
        if (i == 179) {
            return 8;
        }
        if (i == 133) {
            return endCheckBreak();
        }
        if (i == 134) {
            return 0;
        }
        switch (i) {
            case Token.TARGET /* 145 */:
                Node node2 = this.next;
                if (node2 != null) {
                    return node2.endCheck();
                }
                return 1;
            case Token.LOOP /* 146 */:
                return endCheckLoop();
            case Token.EXPR_VOID /* 147 */:
                Node node3 = this.first;
                if (node3 != null) {
                    return node3.endCheck();
                }
                return 1;
            default:
                return 1;
        }
    }

    private int endCheckBlock() {
        int i = 1;
        for (Node node = this.first; (i & 1) != 0 && node != null; node = node.next) {
            i = (i & (-2)) | node.endCheck();
        }
        return i;
    }

    private int endCheckBreak() {
        ((Jump) this).getJumpStatement().putIntProp(18, 1);
        return 0;
    }

    private int endCheckIf() {
        Node node = this.next;
        Node node2 = ((Jump) this).target;
        int endCheck = node.endCheck();
        return node2 != null ? node2.endCheck() | endCheck : endCheck | 1;
    }

    private int endCheckLabel() {
        return getIntProp(18, 0) | this.next.endCheck();
    }

    private int endCheckLoop() {
        Node node = this.first;
        while (true) {
            Node node2 = node.next;
            if (node2 == this.last) {
                break;
            }
            node = node2;
        }
        if (node.type != 6) {
            return 1;
        }
        int endCheck = ((Jump) node).target.next.endCheck();
        if (node.first.type == 50) {
            endCheck &= -2;
        }
        return getIntProp(18, 0) | endCheck;
    }

    private int endCheckSwitch() {
        return 0;
    }

    private int endCheckTry() {
        return 0;
    }

    private PropListItem ensureProperty(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        if (lookupProperty != null) {
            return lookupProperty;
        }
        PropListItem propListItem = new PropListItem(0);
        propListItem.type = i;
        propListItem.next = this.propListHead;
        this.propListHead = propListItem;
        return propListItem;
    }

    private PropListItem lookupProperty(int i) {
        PropListItem propListItem = this.propListHead;
        while (propListItem != null && i != propListItem.type) {
            propListItem = propListItem.next;
        }
        return propListItem;
    }

    public static Node newNumber(double d) {
        NumberLiteral numberLiteral = new NumberLiteral();
        numberLiteral.setNumber(d);
        return numberLiteral;
    }

    public static Node newString(int i, String str) {
        Name name = new Name();
        name.setIdentifier(str);
        name.setType(i);
        return name;
    }

    public static Node newTarget() {
        return new Node(Token.TARGET);
    }

    private static final String propToString(int i) {
        return null;
    }

    private void resetTargets_r() {
        int i = this.type;
        if (i == 145 || i == 78 || i == 179) {
            labelId(-1);
        }
        for (Node node = this.first; node != null; node = node.next) {
            node.resetTargets_r();
        }
    }

    public void addChildAfter(Node node, Node node2) {
        if (node.next != null) {
            Node$$ExternalSyntheticBUOutline0.m811m("newChild had siblings in addChildAfter");
            return;
        }
        node.next = node2.next;
        node2.next = node;
        if (this.last == node2) {
            this.last = node;
        }
    }

    public void addChildBefore(Node node, Node node2) {
        if (node.next != null) {
            Node$$ExternalSyntheticBUOutline0.m811m("newChild had siblings in addChildBefore");
            return;
        }
        Node node3 = this.first;
        if (node3 != node2) {
            addChildAfter(node, getChildBefore(node2));
        } else {
            node.next = node3;
            this.first = node;
        }
    }

    public void addChildToBack(Node node) {
        node.next = null;
        Node node2 = this.last;
        if (node2 == null) {
            this.last = node;
            this.first = node;
        } else {
            node2.next = node;
            this.last = node;
        }
    }

    public void addChildToFront(Node node) {
        node.next = this.first;
        this.first = node;
        if (this.last == null) {
            this.last = node;
        }
    }

    public void addChildrenToBack(Node node) {
        Node node2 = this.last;
        if (node2 != null) {
            node2.next = node;
        }
        this.last = node.getLastSibling();
        if (this.first == null) {
            this.first = node;
        }
    }

    public void addChildrenToFront(Node node) {
        Node lastSibling = node.getLastSibling();
        lastSibling.next = this.first;
        this.first = node;
        if (this.last == null) {
            this.last = lastSibling;
        }
    }

    public BigInteger getBigInt() {
        throw new UnsupportedOperationException("Can only be called when Token.BIGINT");
    }

    public Node getChildBefore(Node node) {
        Node node2 = this.first;
        if (node == node2) {
            return null;
        }
        while (true) {
            Node node3 = node2.next;
            if (node3 == node) {
                return node2;
            }
            if (node3 == null) {
                Node$$ExternalSyntheticBUOutline0.m811m("node is not a child");
                return null;
            }
            node2 = node3;
        }
    }

    public int getColumn() {
        return this.column;
    }

    public final double getDouble() {
        return ((NumberLiteral) this).getNumber();
    }

    public int getExistingIntProp(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        if (lookupProperty == null) {
            Kit.codeBug();
        }
        return lookupProperty.intValue;
    }

    public Node getFirstChild() {
        return this.first;
    }

    public int getIntProp(int i, int i2) {
        PropListItem lookupProperty = lookupProperty(i);
        return lookupProperty == null ? i2 : lookupProperty.intValue;
    }

    public String getJsDoc() {
        Comment jsDocNode = getJsDocNode();
        if (jsDocNode != null) {
            return jsDocNode.getValue();
        }
        return null;
    }

    public Comment getJsDocNode() {
        return (Comment) getProp(24);
    }

    public Node getLastChild() {
        return this.last;
    }

    public Node getLastSibling() {
        while (true) {
            Node node = this.next;
            if (node == null) {
                return this;
            }
            this = node;
        }
    }

    public int getLineno() {
        return this.lineno;
    }

    public Node getNext() {
        return this.next;
    }

    public Object getProp(int i) {
        PropListItem lookupProperty = lookupProperty(i);
        if (lookupProperty == null) {
            return null;
        }
        return lookupProperty.objectValue;
    }

    public Scope getScope() {
        return ((Name) this).getScope();
    }

    public final String getString() {
        return ((Name) this).getIdentifier();
    }

    public int getType() {
        return this.type;
    }

    public boolean hasChildren() {
        return this.first != null;
    }

    public boolean hasConsistentReturnUsage() {
        int endCheck = endCheck();
        return (endCheck & 4) == 0 || (endCheck & 11) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0087 A[FALL_THROUGH, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasSideEffects() {
        /*
            r3 = this;
            int r0 = r3.type
            r1 = 30
            r2 = 1
            if (r0 == r1) goto L87
            r1 = 31
            if (r0 == r1) goto L87
            r1 = 55
            if (r0 == r1) goto L87
            r1 = 56
            if (r0 == r1) goto L87
            r1 = 61
            if (r0 == r1) goto L87
            r1 = 62
            if (r0 == r1) goto L87
            r1 = 90
            if (r0 == r1) goto L87
            r1 = 91
            if (r0 == r1) goto L87
            r1 = 0
            switch(r0) {
                case -1: goto L87;
                case 37: goto L87;
                case 41: goto L87;
                case 43: goto L87;
                case 70: goto L87;
                case 78: goto L87;
                case 98: goto L7c;
                case 99: goto L87;
                case 100: goto L87;
                case 101: goto L87;
                case 102: goto L87;
                case 103: goto L87;
                case 104: goto L87;
                case 105: goto L87;
                case 106: goto L87;
                case 107: goto L87;
                case 108: goto L87;
                case 109: goto L87;
                case 110: goto L87;
                case 111: goto L87;
                case 112: goto L87;
                case 113: goto L87;
                case 114: goto L87;
                case 115: goto L55;
                case 143: goto L87;
                case 144: goto L87;
                case 145: goto L87;
                case 146: goto L87;
                case 147: goto L7c;
                case 148: goto L87;
                case 149: goto L87;
                case 153: goto L87;
                case 154: goto L87;
                case 155: goto L87;
                case 156: goto L87;
                case 167: goto L87;
                case 168: goto L87;
                case 172: goto L87;
                case 173: goto L87;
                case 179: goto L87;
                default: goto L27;
            }
        L27:
            switch(r0) {
                case 2: goto L87;
                case 3: goto L87;
                case 4: goto L87;
                case 5: goto L87;
                case 6: goto L87;
                case 7: goto L87;
                case 8: goto L87;
                default: goto L2a;
            }
        L2a:
            switch(r0) {
                case 74: goto L87;
                case 75: goto L87;
                case 76: goto L87;
                default: goto L2d;
            }
        L2d:
            switch(r0) {
                case 117: goto L37;
                case 118: goto L37;
                case 119: goto L87;
                case 120: goto L87;
                default: goto L30;
            }
        L30:
            switch(r0) {
                case 125: goto L87;
                case 126: goto L87;
                case 127: goto L87;
                default: goto L33;
            }
        L33:
            switch(r0) {
                case 130: goto L87;
                case 131: goto L87;
                case 132: goto L87;
                case 133: goto L87;
                case 134: goto L87;
                case 135: goto L87;
                case 136: goto L87;
                case 137: goto L87;
                case 138: goto L87;
                default: goto L36;
            }
        L36:
            return r1
        L37:
            org.mozilla.javascript.Node r0 = r3.first
            if (r0 == 0) goto L3f
            org.mozilla.javascript.Node r0 = r3.last
            if (r0 != 0) goto L42
        L3f:
            org.mozilla.javascript.Kit.codeBug()
        L42:
            org.mozilla.javascript.Node r0 = r3.first
            boolean r0 = r0.hasSideEffects()
            if (r0 != 0) goto L54
            org.mozilla.javascript.Node r3 = r3.last
            boolean r3 = r3.hasSideEffects()
            if (r3 == 0) goto L53
            goto L54
        L53:
            return r1
        L54:
            return r2
        L55:
            org.mozilla.javascript.Node r0 = r3.first
            if (r0 == 0) goto L61
            org.mozilla.javascript.Node r0 = r0.next
            if (r0 == 0) goto L61
            org.mozilla.javascript.Node r0 = r0.next
            if (r0 != 0) goto L64
        L61:
            org.mozilla.javascript.Kit.codeBug()
        L64:
            org.mozilla.javascript.Node r0 = r3.first
            org.mozilla.javascript.Node r0 = r0.next
            boolean r0 = r0.hasSideEffects()
            if (r0 == 0) goto L7b
            org.mozilla.javascript.Node r3 = r3.first
            org.mozilla.javascript.Node r3 = r3.next
            org.mozilla.javascript.Node r3 = r3.next
            boolean r3 = r3.hasSideEffects()
            if (r3 == 0) goto L7b
            return r2
        L7b:
            return r1
        L7c:
            org.mozilla.javascript.Node r3 = r3.last
            if (r3 == 0) goto L87
            boolean r3 = r3.hasSideEffects()     // Catch: java.lang.Throwable -> L85
            return r3
        L85:
            r3 = move-exception
            throw r3
        L87:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Node.hasSideEffects():boolean");
    }

    @Override // java.lang.Iterable
    public Iterator<Node> iterator() {
        return new NodeIterator();
    }

    public final int labelId() {
        int i = this.type;
        if (i != 145 && i != 78 && i != 179) {
            Kit.codeBug();
        }
        return getIntProp(15, -1);
    }

    public void putIntProp(int i, int i2) {
        ensureProperty(i).intValue = i2;
    }

    public void putProp(int i, Object obj) {
        if (obj == null) {
            removeProp(i);
        } else {
            ensureProperty(i).objectValue = obj;
        }
    }

    public void removeChild(Node node) {
        Node childBefore = getChildBefore(node);
        if (childBefore == null) {
            this.first = this.first.next;
        } else {
            childBefore.next = node.next;
        }
        if (node == this.last) {
            this.last = childBefore;
        }
        node.next = null;
    }

    public void removeChildren() {
        this.last = null;
        this.first = null;
    }

    public void removeProp(int i) {
        PropListItem propListItem = this.propListHead;
        if (propListItem != null) {
            PropListItem propListItem2 = null;
            while (propListItem.type != i) {
                PropListItem propListItem3 = propListItem.next;
                if (propListItem3 == null) {
                    return;
                }
                propListItem2 = propListItem;
                propListItem = propListItem3;
            }
            PropListItem propListItem4 = propListItem.next;
            if (propListItem2 == null) {
                this.propListHead = propListItem4;
            } else {
                propListItem2.next = propListItem4;
            }
        }
    }

    public void replaceChild(Node node, Node node2) {
        if (node == node2) {
            return;
        }
        node2.next = node.next;
        if (node == this.first) {
            this.first = node2;
        } else {
            getChildBefore(node).next = node2;
        }
        if (node == this.last) {
            this.last = node2;
        }
        node.next = null;
    }

    public void replaceChildAfter(Node node, Node node2) {
        Node node3 = node.next;
        node2.next = node3.next;
        node.next = node2;
        if (node3 == this.last) {
            this.last = node2;
        }
        node3.next = null;
    }

    public void resetTargets() {
        if (this.type == 138) {
            resetTargets_r();
        } else {
            Kit.codeBug();
        }
    }

    public void setBigInt(BigInteger bigInteger) {
        throw new UnsupportedOperationException("Can only be called when Token.BIGINT");
    }

    public final void setDouble(double d) {
        ((NumberLiteral) this).setNumber(d);
    }

    public void setJsDocNode(Comment comment) {
        putProp(24, comment);
    }

    public void setLineColumnNumber(int i, int i2) {
        this.lineno = i;
        this.column = i2;
    }

    public void setScope(Scope scope) {
        if (scope == null) {
            Kit.codeBug();
        }
        if (!(this instanceof Name)) {
            throw Kit.codeBug();
        }
        ((Name) this).setScope(scope);
    }

    public final void setString(String str) {
        if (str == null) {
            Kit.codeBug();
        }
        ((Name) this).setIdentifier(str);
    }

    public Node setType(int i) {
        this.type = i;
        return this;
    }

    public String toString() {
        return String.valueOf(this.type);
    }

    public String toStringTree(ScriptNode scriptNode) {
        return null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class PropListItem {
        int intValue;
        PropListItem next;
        Object objectValue;
        int type;

        public /* synthetic */ PropListItem(int i) {
            this();
        }

        private PropListItem() {
        }
    }

    private void toString(Map<Node, Integer> map, StringBuilder sb) {
    }

    public static Node newString(String str) {
        return newString(46, str);
    }

    public Node(int i, Node node) {
        this.lineno = -1;
        this.column = -1;
        this.type = i;
        this.last = node;
        this.first = node;
        node.next = null;
    }

    public void labelId(int i) {
        int i2 = this.type;
        if (i2 != 145 && i2 != 78 && i2 != 179) {
            Kit.codeBug();
        }
        putIntProp(15, i);
    }

    public Node(int i, Node node, Node node2) {
        this.lineno = -1;
        this.column = -1;
        this.type = i;
        this.first = node;
        this.last = node2;
        node.next = node2;
        node2.next = null;
    }

    public Node(int i) {
        this.lineno = -1;
        this.column = -1;
        this.type = i;
    }

    public Node(int i, int i2, int i3) {
        this.lineno = -1;
        this.column = -1;
        this.type = i;
        setLineColumnNumber(i2, i3);
    }

    private static void generatePrintIds(Node node, Map<Node, Integer> map) {
    }

    public Node(int i, Node node, int i2, int i3) {
        this(i, node);
        setLineColumnNumber(i2, i3);
    }

    public Node(int i, Node node, Node node2, int i2, int i3) {
        this(i, node, node2);
        setLineColumnNumber(i2, i3);
    }

    public Node(int i, Node node, Node node2, Node node3, int i2, int i3) {
        this(i, node, node2, node3);
        setLineColumnNumber(i2, i3);
    }

    private static void appendPrintId(Node node, Map<Node, Integer> map, StringBuilder sb) {
    }

    private static void toStringTreeHelper(ScriptNode scriptNode, Node node, Map<Node, Integer> map, int i, StringBuilder sb) {
    }
}
