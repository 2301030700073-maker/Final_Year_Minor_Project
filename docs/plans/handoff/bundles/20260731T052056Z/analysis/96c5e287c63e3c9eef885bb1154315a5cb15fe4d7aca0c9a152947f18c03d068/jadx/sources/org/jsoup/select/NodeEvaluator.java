package org.jsoup.select;

import androidx.compose.animation.core.Animation;
import org.jsoup.helper.Regex;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NodeEvaluator extends Evaluator {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BlankValue extends NodeEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return 4;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean evaluateMatch(Node node) {
            return StringUtil.isBlank(node.nodeValue());
        }

        public final String toString() {
            return ":blank";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InstanceType extends NodeEvaluator {
        public final String selector;
        public final Class type;

        public InstanceType(Class cls, String str) {
            this.type = cls;
            this.selector = "::".concat(str);
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return 1;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean evaluateMatch(Node node) {
            return this.type.isInstance(node);
        }

        public final String toString() {
            return this.selector;
        }
    }

    public abstract boolean evaluateMatch(Node node);

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, Element element2) {
        return evaluateMatch(element2);
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean wantsNodes() {
        return true;
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, LeafNode leafNode) {
        return evaluateMatch(leafNode);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MatchesValue extends NodeEvaluator {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object pattern;

        public MatchesValue(String str) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            StringUtil.appendNormalisedWhitespace(str, borrowBuilder, false);
            this.pattern = QuietAppendable$BaseAppendable.lowerCase(StringUtil.releaseBuilder(borrowBuilder));
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 8;
                default:
                    return 6;
            }
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean evaluateMatch(Node node) {
            int i = this.$r8$classId;
            Object obj = this.pattern;
            switch (i) {
                case 0:
                    return ((Regex) obj).matcher(node.nodeValue()).find();
                default:
                    return QuietAppendable$BaseAppendable.lowerCase(node.nodeValue()).contains((String) obj);
            }
        }

        public final String toString() {
            int i = this.$r8$classId;
            Object obj = this.pattern;
            switch (i) {
                case 0:
                    return String.format(":matches(%s)", (Regex) obj);
                default:
                    return Animation.CC.m(":contains(", (String) obj, ")");
            }
        }

        public MatchesValue(Regex regex) {
            this.pattern = regex;
        }
    }
}
