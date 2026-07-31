package org.jsoup.select;

import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CombiningEvaluator extends Evaluator {
    public boolean wantsNodes;
    public int num = 0;
    public int cost = 0;
    public final ArrayList evaluators = new ArrayList();
    public final ArrayList sortedEvaluators = new ArrayList();

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
        List.EL.sort(arrayList2, Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(1)));
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class And extends CombiningEvaluator {
        public And(java.util.List list) {
            this.evaluators.addAll(list);
            updateEvaluators();
        }

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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
