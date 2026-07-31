package net.thunderbird.feature.search.legacy;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.LinkedHashSet;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import net.thunderbird.feature.search.legacy.api.SearchCondition;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class SearchConditionTreeNode {
    public final SearchCondition condition;
    public final SearchConditionTreeNode left;
    public final Operator operator;
    public final SearchConditionTreeNode right;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(21)), null, null, null};

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return SearchConditionTreeNode$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class Operator {
        public static final /* synthetic */ Operator[] $VALUES;
        public static final Lazy $cachedSerializer$delegate;
        public static final Operator AND;
        public static final Operator CONDITION;
        public static final Companion Companion;
        public static final Operator NOT;
        public static final Operator OR;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return (KSerializer) Operator.$cachedSerializer$delegate.getValue();
            }
        }

        static {
            Operator operator = new Operator("AND", 0);
            AND = operator;
            Operator operator2 = new Operator("NOT", 1);
            NOT = operator2;
            Operator operator3 = new Operator("OR", 2);
            OR = operator3;
            Operator operator4 = new Operator("CONDITION", 3);
            CONDITION = operator4;
            $VALUES = new Operator[]{operator, operator2, operator3, operator4};
            Companion = new Companion();
            $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(22));
        }

        public static Operator valueOf(String str) {
            return (Operator) Enum.valueOf(Operator.class, str);
        }

        public static Operator[] values() {
            return (Operator[]) $VALUES.clone();
        }
    }

    public /* synthetic */ SearchConditionTreeNode(int i, Operator operator, SearchCondition searchCondition, SearchConditionTreeNode searchConditionTreeNode, SearchConditionTreeNode searchConditionTreeNode2) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, SearchConditionTreeNode$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.operator = operator;
        if ((i & 2) == 0) {
            this.condition = null;
        } else {
            this.condition = searchCondition;
        }
        if ((i & 4) == 0) {
            this.left = null;
        } else {
            this.left = searchConditionTreeNode;
        }
        if ((i & 8) == 0) {
            this.right = null;
        } else {
            this.right = searchConditionTreeNode2;
        }
    }

    public static void collectLeaves(SearchConditionTreeNode searchConditionTreeNode, LinkedHashSet linkedHashSet) {
        if (searchConditionTreeNode == null) {
            return;
        }
        SearchConditionTreeNode searchConditionTreeNode2 = searchConditionTreeNode.left;
        int ordinal = searchConditionTreeNode.operator.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                collectLeaves(searchConditionTreeNode2, linkedHashSet);
                return;
            } else if (ordinal != 2) {
                if (ordinal == 3) {
                    linkedHashSet.add(searchConditionTreeNode);
                    return;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
            }
        }
        collectLeaves(searchConditionTreeNode2, linkedHashSet);
        collectLeaves(searchConditionTreeNode.right, linkedHashSet);
    }

    public final String toString() {
        String str;
        String searchConditionTreeNode;
        String searchConditionTreeNode2;
        Operator operator = this.operator;
        int ordinal = operator.ordinal();
        SearchConditionTreeNode searchConditionTreeNode3 = this.left;
        String str2 = "null";
        if (ordinal != 0) {
            if (ordinal == 1) {
                if (searchConditionTreeNode3 != null && (searchConditionTreeNode2 = searchConditionTreeNode3.toString()) != null) {
                    str2 = searchConditionTreeNode2;
                }
                return CameraDevices$CC.m("(NOT ", str2, ")");
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return String.valueOf(this.condition);
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
        }
        if (searchConditionTreeNode3 == null || (str = searchConditionTreeNode3.toString()) == null) {
            str = "null";
        }
        SearchConditionTreeNode searchConditionTreeNode4 = this.right;
        if (searchConditionTreeNode4 != null && (searchConditionTreeNode = searchConditionTreeNode4.toString()) != null) {
            str2 = searchConditionTreeNode;
        }
        return CameraDevices$CC.m(Config.CC.m("(", str, " ", operator.name(), " "), str2, ")");
    }

    public SearchConditionTreeNode(Operator operator, SearchCondition searchCondition, SearchConditionTreeNode searchConditionTreeNode, SearchConditionTreeNode searchConditionTreeNode2, int i) {
        searchCondition = (i & 2) != 0 ? null : searchCondition;
        searchConditionTreeNode = (i & 4) != 0 ? null : searchConditionTreeNode;
        searchConditionTreeNode2 = (i & 8) != 0 ? null : searchConditionTreeNode2;
        this.operator = operator;
        this.condition = searchCondition;
        this.left = searchConditionTreeNode;
        this.right = searchConditionTreeNode2;
    }
}
