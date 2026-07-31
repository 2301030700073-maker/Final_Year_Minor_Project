package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TypeCheckerState {
    public int argumentsDepth;
    public final boolean isErrorTypeEqualsToAnything;
    public final boolean isStubTypeEqualsToAnything;
    public final KotlinTypePreparator$Default kotlinTypePreparator;
    public ArrayDeque supertypesDeque;
    public SmartSet supertypesSet;
    public final ClassicTypeSystemContext typeSystemContext;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LowerCapturedTypePolicy {
        private static final /* synthetic */ LowerCapturedTypePolicy[] $VALUES;
        public static final LowerCapturedTypePolicy CHECK_ONLY_LOWER;
        public static final LowerCapturedTypePolicy CHECK_SUBTYPE_AND_LOWER;
        public static final LowerCapturedTypePolicy SKIP_LOWER;

        static {
            LowerCapturedTypePolicy lowerCapturedTypePolicy = new LowerCapturedTypePolicy("CHECK_ONLY_LOWER", 0);
            CHECK_ONLY_LOWER = lowerCapturedTypePolicy;
            LowerCapturedTypePolicy lowerCapturedTypePolicy2 = new LowerCapturedTypePolicy("CHECK_SUBTYPE_AND_LOWER", 1);
            CHECK_SUBTYPE_AND_LOWER = lowerCapturedTypePolicy2;
            LowerCapturedTypePolicy lowerCapturedTypePolicy3 = new LowerCapturedTypePolicy("SKIP_LOWER", 2);
            SKIP_LOWER = lowerCapturedTypePolicy3;
            $VALUES = new LowerCapturedTypePolicy[]{lowerCapturedTypePolicy, lowerCapturedTypePolicy2, lowerCapturedTypePolicy3};
        }

        public static LowerCapturedTypePolicy valueOf(String str) {
            return (LowerCapturedTypePolicy) Enum.valueOf(LowerCapturedTypePolicy.class, str);
        }

        public static LowerCapturedTypePolicy[] values() {
            return (LowerCapturedTypePolicy[]) $VALUES.clone();
        }
    }

    public TypeCheckerState(boolean z, boolean z2, ClassicTypeSystemContext classicTypeSystemContext, KotlinTypePreparator$Default kotlinTypePreparator$Default, KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        this.isErrorTypeEqualsToAnything = z;
        this.isStubTypeEqualsToAnything = z2;
        this.typeSystemContext = classicTypeSystemContext;
        this.kotlinTypePreparator = kotlinTypePreparator$Default;
    }

    public final void clear() {
        ArrayDeque arrayDeque = this.supertypesDeque;
        arrayDeque.getClass();
        arrayDeque.clear();
        SmartSet smartSet = this.supertypesSet;
        smartSet.getClass();
        smartSet.clear();
    }

    public boolean customIsSubtypeOf(KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        return true;
    }

    public final void initialize() {
        if (this.supertypesDeque == null) {
            this.supertypesDeque = new ArrayDeque(4);
        }
        if (this.supertypesSet == null) {
            this.supertypesSet = new SmartSet();
        }
    }
}
