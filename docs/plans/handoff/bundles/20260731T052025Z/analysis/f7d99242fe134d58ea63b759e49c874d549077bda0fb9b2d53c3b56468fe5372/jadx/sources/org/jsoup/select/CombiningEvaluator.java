package org.jsoup.select;

import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CombiningEvaluator extends Evaluator {
    public int num = 0;
    public int cost = 0;
    public final ArrayList evaluators = new ArrayList();
    public final ArrayList sortedEvaluators = new ArrayList();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Or extends CombiningEvaluator {
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
            return StringUtil.join(this.evaluators, ", ");
        }
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
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return StringUtil.join(this.evaluators, "");
        }

        public And(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }
}
