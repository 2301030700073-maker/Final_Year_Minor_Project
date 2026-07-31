package org.jsoup.select;

import j$.util.Map;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.function.Supplier;
import okhttp3.FormBody;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StructuralEvaluator extends Evaluator {
    public final Evaluator evaluator;
    public final Entities$$ExternalSyntheticThreadLocal1 threadMemo = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(6), 1);
    public boolean wantsNodes;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Has extends StructuralEvaluator {
        public static final FormBody.Builder NodeIterPool = new FormBody.Builder((Supplier) new Entities$$ExternalSyntheticLambda0(7));
        public final boolean checkSiblings;

        public Has(Evaluator evaluator) {
            super(evaluator);
            boolean z;
            if (evaluator instanceof CombiningEvaluator) {
                Iterator it = ((CombiningEvaluator) evaluator).evaluators.iterator();
                while (it.hasNext()) {
                    Evaluator evaluator2 = (Evaluator) it.next();
                    if ((evaluator2 instanceof PreviousSibling) || (evaluator2 instanceof ImmediatePreviousSibling)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            this.checkSiblings = z;
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.evaluator.cost() * 10;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean evaluateMatch(Element element, Node node) {
            return false;
        }

        @Override // org.jsoup.select.StructuralEvaluator, org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            boolean z = this.checkSiblings;
            Evaluator evaluator = this.evaluator;
            if (z) {
                Element element3 = element2.parentNode;
                for (Element firstElementChild = element3 != null ? element3.firstElementChild() : element2; firstElementChild != null; firstElementChild = firstElementChild.nextElementSibling()) {
                    if (firstElementChild != element2 && evaluator.matches(element2, firstElementChild)) {
                        return true;
                    }
                }
            }
            FormBody.Builder builder = NodeIterPool;
            NodeIterator nodeIterator = (NodeIterator) builder.borrow();
            if (nodeIterator.type.isInstance(element2)) {
                nodeIterator.next = element2;
            }
            nodeIterator.current = element2;
            nodeIterator.previous = element2;
            nodeIterator.root = element2;
            nodeIterator.currentParent = element2.parent();
            while (nodeIterator.hasNext()) {
                try {
                    nodeIterator.maybeFindNext();
                    Node node = nodeIterator.next;
                    if (node == null) {
                        throw new NoSuchElementException();
                    }
                    nodeIterator.previous = nodeIterator.current;
                    nodeIterator.current = node;
                    nodeIterator.currentParent = node.parent();
                    nodeIterator.next = null;
                    if (node != element2 && evaluator.matches(element2, node)) {
                        return true;
                    }
                } finally {
                    builder.release(nodeIterator);
                }
            }
            builder.release(nodeIterator);
            return false;
        }

        public final String toString() {
            return String.format(":has(%s)", this.evaluator);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImmediateParentRun extends StructuralEvaluator {
        public int cost;
        public final ArrayList evaluators;

        public ImmediateParentRun(Evaluator evaluator) {
            super(evaluator);
            ArrayList arrayList = new ArrayList();
            this.evaluators = arrayList;
            this.cost = 2;
            arrayList.add(evaluator);
            this.cost = evaluator.cost() + this.cost;
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.cost;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean evaluateMatch(Element element, Node node) {
            if (node == element) {
                return false;
            }
            ArrayList arrayList = this.evaluators;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (node == null || !((Evaluator) arrayList.get(size)).matches(element, node)) {
                    return false;
                }
                node = node.parent();
            }
            return true;
        }

        @Override // org.jsoup.select.StructuralEvaluator, org.jsoup.select.Evaluator
        public final void reset() {
            Iterator it = this.evaluators.iterator();
            while (it.hasNext()) {
                ((Evaluator) it.next()).reset();
            }
            super.reset();
        }

        public final String toString() {
            return StringUtil.join(" > ", this.evaluators);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImmediatePreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.evaluator.cost() + 2;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean evaluateMatch(Element element, Node node) {
            Node node2;
            if (element == node) {
                return false;
            }
            if (!this.wantsNodes) {
                node.getClass();
                while (true) {
                    node = node.previousSibling();
                    if (node == null) {
                        node2 = null;
                        break;
                    }
                    if (node instanceof Element) {
                        node2 = (Element) node;
                        break;
                    }
                }
            } else {
                node2 = node.previousSibling();
            }
            return node2 != null && memoMatches(element, node2);
        }

        public final String toString() {
            return String.format("%s + ", this.evaluator);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Is extends StructuralEvaluator {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Is(Evaluator evaluator, int i) {
            super(evaluator);
            this.$r8$classId = i;
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return this.evaluator.cost() + 2;
                case 1:
                    return this.evaluator.cost() * 8;
                default:
                    return this.evaluator.cost() + 2;
            }
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean evaluateMatch(Element element, Node node) {
            switch (this.$r8$classId) {
                case 0:
                    return this.evaluator.matches(element, node);
                case 1:
                    if (element != node) {
                        for (Element parent = node.parent(); parent != null; parent = parent.parentNode) {
                            if (memoMatches(element, parent)) {
                                return true;
                            }
                            if (parent != element) {
                            }
                        }
                    }
                    return false;
                default:
                    return !memoMatches(element, node);
            }
        }

        public final String toString() {
            int i = this.$r8$classId;
            Evaluator evaluator = this.evaluator;
            switch (i) {
                case 0:
                    return String.format(":is(%s)", evaluator);
                case 1:
                    return String.format("%s ", evaluator);
                default:
                    return String.format(":not(%s)", evaluator);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.evaluator.cost() * 3;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean evaluateMatch(Element element, Node node) {
            if (element == node) {
                return false;
            }
            Element element2 = node.parentNode;
            for (Node firstChild = element2 != null ? element2.firstChild() : node; firstChild != null && firstChild != node; firstChild = firstChild.nextSibling()) {
                if (memoMatches(element, firstChild)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format("%s ~ ", this.evaluator);
        }
    }

    public StructuralEvaluator(Evaluator evaluator) {
        this.evaluator = evaluator;
        this.wantsNodes = evaluator.wantsNodes();
    }

    public abstract boolean evaluateMatch(Element element, Node node);

    @Override // org.jsoup.select.Evaluator
    public boolean matches(Element element, Element element2) {
        return evaluateMatch(element, element2);
    }

    public final boolean memoMatches(final Element element, Node node) {
        return ((Boolean) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent((java.util.Map) this.threadMemo.get(), element, new Nodes$$ExternalSyntheticLambda0(6)), node, new Function() { // from class: org.jsoup.select.StructuralEvaluator$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo800andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(StructuralEvaluator.this.evaluator.matches(element, (Node) obj));
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).booleanValue();
    }

    @Override // org.jsoup.select.Evaluator
    public void reset() {
        this.threadMemo.remove();
        this.evaluator.reset();
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean wantsNodes() {
        return this.wantsNodes;
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, LeafNode leafNode) {
        return evaluateMatch(element, leafNode);
    }
}
