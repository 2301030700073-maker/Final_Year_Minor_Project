package androidx.glance.appwidget;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.DpSize;
import androidx.glance.Applier;
import androidx.glance.appwidget.SizeMode;
import androidx.work.Operation$State;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SizeBoxKt$SizeBox$1 extends Lambda implements Function2 {
    public final /* synthetic */ Function2 $content;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ long $size;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.glance.appwidget.SizeBoxKt$SizeBox$1$1, reason: invalid class name */
    public final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1(0, EmittableSizeBox.class, "<init>", "<init>()V", 0);

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new EmittableSizeBox();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeBoxKt$SizeBox$1(long j, Function2 function2, int i) {
        super(2);
        this.$size = j;
        this.$content = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.$content;
        long j = this.$size;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                if ((((Number) obj2).intValue() & 3) == 2 && gapComposer.getSkipping()) {
                    gapComposer.skipToGroupEnd();
                } else {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.INSTANCE;
                    gapComposer.startReplaceableGroup(578571862);
                    gapComposer.startReplaceableGroup(-548224868);
                    if (!(gapComposer.applier instanceof Applier)) {
                        Updater.invalidApplier();
                        throw null;
                    }
                    gapComposer.startNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(anonymousClass1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, new DpSize(j), SizeBoxKt$SizeBox$1$2$1.INSTANCE);
                    Updater.m327setimpl(gapComposer, SizeMode.Exact.INSTANCE, SizeBoxKt$SizeBox$1$2$1.INSTANCE$19);
                    function2.invoke(gapComposer, 0);
                    gapComposer.end(true);
                    gapComposer.end(false);
                    gapComposer.end(false);
                }
                return unit;
            default:
                ((Number) obj2).intValue();
                Operation$State.m763ForEachSizeeVKgIn8(j, function2, (GapComposer) obj, 1);
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeBoxKt$SizeBox$1(Function2 function2, long j) {
        super(2);
        this.$content = function2;
        this.$size = j;
    }
}
