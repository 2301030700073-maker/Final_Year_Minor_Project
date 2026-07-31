package androidx.compose.foundation.gestures;

import android.net.Uri;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.MutableState;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollableKt$semanticsScrollBy$2 extends SuspendLambda implements Function2 {
    public long $offset;
    public final /* synthetic */ Object $previousValue;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_semanticsScrollBy;
    public Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$semanticsScrollBy$2(TextContextMenuGestureNode textContextMenuGestureNode, long j, TextContextMenuProvider textContextMenuProvider, TextContextMenuGestureNode.ClickTextContextMenuDataProvider clickTextContextMenuDataProvider, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.L$0 = textContextMenuGestureNode;
        this.$offset = j;
        this.$this_semanticsScrollBy = textContextMenuProvider;
        this.$previousValue = clickTextContextMenuDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$previousValue;
        Object obj3 = this.$this_semanticsScrollBy;
        switch (i) {
            case 0:
                int i2 = 0;
                ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(i2, this.$offset, (ScrollingLogic) obj3, (Ref$FloatRef) obj2, continuation);
                scrollableKt$semanticsScrollBy$2.L$0 = obj;
                return scrollableKt$semanticsScrollBy$2;
            case 1:
                return new ScrollableKt$semanticsScrollBy$2(1, this.$offset, (Job) obj3, (MutableInteractionSourceImpl) obj2, continuation);
            case 2:
                return new ScrollableKt$semanticsScrollBy$2((LazyLayoutItemAnimation) obj3, (FiniteAnimationSpec) obj2, this.$offset, continuation);
            case 3:
                return new ScrollableKt$semanticsScrollBy$2(3, this.$offset, (MutableState) obj3, (MutableInteractionSourceImpl) obj2, continuation);
            case 4:
                return new ScrollableKt$semanticsScrollBy$2((TextContextMenuGestureNode) this.L$0, this.$offset, (TextContextMenuProvider) obj3, (TextContextMenuGestureNode.ClickTextContextMenuDataProvider) obj2, continuation);
            default:
                return new ScrollableKt$semanticsScrollBy$2((SettingsImportViewModel) obj3, (Uri) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((ScrollableKt$semanticsScrollBy$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0092 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:9:0x0027, B:10:0x0080, B:11:0x008c, B:13:0x0092, B:15:0x0096, B:17:0x00b0, B:18:0x00b3, B:21:0x00b4, B:23:0x00bf, B:24:0x00c7, B:25:0x00ce, B:27:0x00d4, B:29:0x00dc, B:31:0x00ea, B:32:0x00ed, B:34:0x00ee, B:40:0x0036, B:42:0x005b, B:44:0x0071, B:49:0x003f), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bf A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:9:0x0027, B:10:0x0080, B:11:0x008c, B:13:0x0092, B:15:0x0096, B:17:0x00b0, B:18:0x00b3, B:21:0x00b4, B:23:0x00bf, B:24:0x00c7, B:25:0x00ce, B:27:0x00d4, B:29:0x00dc, B:31:0x00ea, B:32:0x00ed, B:34:0x00ee, B:40:0x0036, B:42:0x005b, B:44:0x0071, B:49:0x003f), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d4 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:9:0x0027, B:10:0x0080, B:11:0x008c, B:13:0x0092, B:15:0x0096, B:17:0x00b0, B:18:0x00b3, B:21:0x00b4, B:23:0x00bf, B:24:0x00c7, B:25:0x00ce, B:27:0x00d4, B:29:0x00dc, B:31:0x00ea, B:32:0x00ed, B:34:0x00ee, B:40:0x0036, B:42:0x005b, B:44:0x0071, B:49:0x003f), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01bc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$semanticsScrollBy$2(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, long j, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$this_semanticsScrollBy = lazyLayoutItemAnimation;
        this.$previousValue = finiteAnimationSpec;
        this.$offset = j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ScrollableKt$semanticsScrollBy$2(int i, long j, Object obj, Object obj2, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_semanticsScrollBy = obj;
        this.$offset = j;
        this.$previousValue = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$semanticsScrollBy$2(SettingsImportViewModel settingsImportViewModel, Uri uri, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 5;
        this.$this_semanticsScrollBy = settingsImportViewModel;
        this.$previousValue = uri;
    }
}
