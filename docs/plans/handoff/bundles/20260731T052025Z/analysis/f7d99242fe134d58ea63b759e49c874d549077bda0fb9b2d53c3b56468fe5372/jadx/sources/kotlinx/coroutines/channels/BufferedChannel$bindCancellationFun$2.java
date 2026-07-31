package kotlinx.coroutines.channels;

import android.content.res.Resources;
import android.os.Build;
import androidx.compose.ui.draganddrop.ComposeDragShadowBuilder;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeViewStartDragAndDropN;
import androidx.compose.ui.unit.DensityImpl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BufferedChannel$bindCancellationFun$2 extends FunctionReferenceImpl implements Function3 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BufferedChannel$bindCancellationFun$2(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Function1 function1 = ((BufferedChannel) this.receiver).onUndeliveredElement;
                function1.getClass();
                InlineList.callUndeliveredElement(function1, obj2, (CoroutineContext) obj3);
                return unit;
            case 1:
                if (obj != null) {
                    DBUtil$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                AndroidComposeView androidComposeView = (AndroidComposeView) this.receiver;
                Resources resources = androidComposeView.getContext().getResources();
                ComposeDragShadowBuilder composeDragShadowBuilder = new ComposeDragShadowBuilder(new DensityImpl(resources.getDisplayMetrics().density, resources.getConfiguration().fontScale), ((Size) obj2).packedValue, (Function1) obj3);
                if (Build.VERSION.SDK_INT >= 24) {
                    return Boolean.valueOf(AndroidComposeViewStartDragAndDropN.INSTANCE.startDragAndDrop(androidComposeView, null, composeDragShadowBuilder));
                }
                throw null;
            default:
                Object obj4 = ((ChannelResult) obj2).holder;
                Function1 function12 = ((BufferedChannel) this.receiver).onUndeliveredElement;
                function12.getClass();
                Object m1017getOrNullimpl = ChannelResult.m1017getOrNullimpl(obj4);
                m1017getOrNullimpl.getClass();
                InlineList.callUndeliveredElement(function12, m1017getOrNullimpl, (CoroutineContext) obj3);
                return unit;
        }
    }
}
