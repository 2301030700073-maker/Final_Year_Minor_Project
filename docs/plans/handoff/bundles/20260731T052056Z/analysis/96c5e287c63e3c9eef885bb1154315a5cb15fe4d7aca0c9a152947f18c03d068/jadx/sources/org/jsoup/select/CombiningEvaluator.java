package org.jsoup.select;

import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CombiningEvaluator extends Evaluator {
    public int cost;
    public final ArrayList evaluators;
    public int num;
    public final ArrayList sortedEvaluators;
    public boolean wantsNodes;

    public CombiningEvaluator() {
        this.num = 0;
        this.cost = 0;
        this.evaluators = new ArrayList();
        this.sortedEvaluators = new ArrayList();
    }

    @Override // org.jsoup.select.Evaluator
    public final int cost() {
        return this.cost;
    }

    @Override // org.jsoup.select.Evaluator
    public final void reset() {
        Iterator it = this.evaluators.iterator();
        while (it.hasNext()) {
            ((Evaluator) it.next()).reset();
        }
    }

    public final void updateEvaluators() {
        ArrayList arrayList = this.evaluators;
        this.num = arrayList.size();
        this.cost = 0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Evaluator evaluator = (Evaluator) it.next();
            this.cost = evaluator.cost() + this.cost;
        }
        ArrayList arrayList2 = this.sortedEvaluators;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        List.EL.sort(arrayList2, Comparator.CC.comparingInt(new CombiningEvaluator$$ExternalSyntheticLambda0()));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (((Evaluator) it2.next()).wantsNodes()) {
                this.wantsNodes = true;
                return;
            }
        }
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean wantsNodes() {
        return this.wantsNodes;
    }

    public CombiningEvaluator(java.util.List list) {
        this();
        this.evaluators.addAll(list);
        updateEvaluators();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class And extends CombiningEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.num; i++) {
                if (!((Evaluator) this.sortedEvaluators.get(i)).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return StringUtil.join("", this.evaluators);
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, LeafNode leafNode) {
            for (int i = 0; i < this.num; i++) {
                if (!((Evaluator) this.sortedEvaluators.get(i)).matches(element, leafNode)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Or extends CombiningEvaluator {
        public Or(Evaluator... evaluatorArr) {
            java.util.List asList = Arrays.asList(evaluatorArr);
            int i = this.num;
            ArrayList arrayList = this.evaluators;
            if (i > 1) {
                arrayList.add(new And(asList));
            } else {
                arrayList.addAll(asList);
            }
            updateEvaluators();
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.num; i++) {
                if (((Evaluator) this.sortedEvaluators.get(i)).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return StringUtil.join(", ", this.evaluators);
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, LeafNode leafNode) {
            for (int i = 0; i < this.num; i++) {
                if (((Evaluator) this.sortedEvaluators.get(i)).matches(element, leafNode)) {
                    return true;
                }
            }
            return false;
        }
    }
}
