package org.jsoup.select;

import j$.util.Map;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Function;
import org.jsoup.internal.Functions;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StructuralEvaluator extends Evaluator {
    public final Evaluator evaluator;
    public final Entities$$ExternalSyntheticThreadLocal1 threadMemo = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(9), 5);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Has extends StructuralEvaluator {
        public static final SoftPool ElementIterPool = new SoftPool(new Entities$$ExternalSyntheticLambda0(10));
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

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            boolean z = this.checkSiblings;
            Evaluator evaluator = this.evaluator;
            if (z) {
                Element element3 = (Element) element2.parentNode;
                for (Element firstElementChild = element3 != null ? element3.firstElementChild() : element2; firstElementChild != null; firstElementChild = firstElementChild.nextElementSibling()) {
                    if (firstElementChild != element2 && evaluator.matches(element2, firstElementChild)) {
                        return true;
                    }
                }
            }
            SoftPool softPool = ElementIterPool;
            NodeIterator nodeIterator = (NodeIterator) softPool.borrow();
            if (nodeIterator.type.isInstance(element2)) {
                nodeIterator.next = element2;
            }
            nodeIterator.current = element2;
            nodeIterator.previous = element2;
            nodeIterator.root = element2;
            nodeIterator.currentParent = (Element) element2.parentNode;
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
                    Element element4 = (Element) node;
                    if (element4 != element2 && evaluator.matches(element2, element4)) {
                        return true;
                    }
                } finally {
                    softPool.release(nodeIterator);
                }
            }
            softPool.release(nodeIterator);
            return false;
        }

        public final String toString() {
            return String.format(":has(%s)", this.evaluator);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImmediateParentRun extends Evaluator {
        public int cost;
        public final ArrayList evaluators;

        public ImmediateParentRun(Evaluator evaluator) {
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

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            if (element2 == element) {
                return false;
            }
            ArrayList arrayList = this.evaluators;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (element2 == null || !((Evaluator) arrayList.get(size)).matches(element, element2)) {
                    return false;
                }
                element2 = (Element) element2.parentNode;
            }
            return true;
        }

        @Override // org.jsoup.select.Evaluator
        public final void reset() {
            Iterator it = this.evaluators.iterator();
            while (it.hasNext()) {
                ((Evaluator) it.next()).reset();
            }
        }

        public final String toString() {
            return StringUtil.join(this.evaluators, " > ");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImmediatePreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.evaluator.cost() + 2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, org.jsoup.nodes.Element] */
        /* JADX WARN: Type inference failed for: r4v1, types: [org.jsoup.nodes.Node] */
        /* JADX WARN: Type inference failed for: r4v2, types: [org.jsoup.nodes.Node] */
        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            Element element3;
            if (element == element2) {
                return false;
            }
            element2.getClass();
            while (true) {
                element2 = element2.previousSibling();
                if (element2 == 0) {
                    element3 = null;
                    break;
                }
                if (element2 instanceof Element) {
                    element3 = (Element) element2;
                    break;
                }
            }
            return element3 != null && memoMatches(element, element3);
        }

        public final String toString() {
            return String.format("%s + ", this.evaluator);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            switch (this.$r8$classId) {
                case 0:
                    return this.evaluator.matches(element, element2);
                case 1:
                    if (element != element2) {
                        Node node = element2.parentNode;
                        while (true) {
                            Element element3 = (Element) node;
                            if (element3 != null) {
                                if (memoMatches(element, element3)) {
                                    return true;
                                }
                                if (element3 != element) {
                                    node = element3.parentNode;
                                }
                            }
                        }
                    }
                    return false;
                default:
                    return !memoMatches(element, element2);
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return this.evaluator.cost() * 3;
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            Element element3 = (Element) element2.parentNode;
            for (Element firstElementChild = element3 != null ? element3.firstElementChild() : element2; firstElementChild != null && firstElementChild != element2; firstElementChild = firstElementChild.nextElementSibling()) {
                if (memoMatches(element, firstElementChild)) {
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
    }

    public final boolean memoMatches(final Element element, Element element2) {
        return ((Boolean) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent((java.util.Map) this.threadMemo.get(), element, Functions.IdentityMapFunction), element2, new Function() { // from class: org.jsoup.select.StructuralEvaluator$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo970andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(StructuralEvaluator.this.evaluator.matches(element, (Element) obj));
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).booleanValue();
    }

    @Override // org.jsoup.select.Evaluator
    public final void reset() {
        ((IdentityHashMap) this.threadMemo.get()).clear();
        this.evaluator.reset();
    }
}
