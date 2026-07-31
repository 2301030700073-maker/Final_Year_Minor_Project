package androidx.compose.material3;

import android.net.Uri;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarHostKt$animatedOpacity$2$1 extends SuspendLambda implements Function2 {
    public Object $alpha;
    public final /* synthetic */ Object $animation;
    public final /* synthetic */ Object $onAnimationFinish;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ boolean $visible;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2$1(Animatable animatable, boolean z, SpringSpec springSpec, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.$alpha = animatable;
        this.$visible = z;
        this.$animation = springSpec;
        this.$onAnimationFinish = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$onAnimationFinish;
        Object obj3 = this.$animation;
        switch (i) {
            case 0:
                return new SnackbarHostKt$animatedOpacity$2$1((Animatable) this.$alpha, this.$visible, (SpringSpec) obj3, (Function0) obj2, continuation);
            case 1:
                return new SnackbarHostKt$animatedOpacity$2$1(this.$visible, (LazyLayoutItemAnimation) this.$alpha, (FiniteAnimationSpec) obj3, (GraphicsLayer) obj2, continuation);
            case 2:
                return new SnackbarHostKt$animatedOpacity$2$1((MutableState) obj3, this.$visible, (MutableInteractionSourceImpl) obj2, continuation);
            default:
                return new SnackbarHostKt$animatedOpacity$2$1((SettingsImportViewModel) this.$alpha, (Uri) obj3, this.$visible, (List) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SnackbarHostKt$animatedOpacity$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cd, code lost:
    
        if (r0 == r9) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarHostKt$animatedOpacity$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2$1(MutableState mutableState, boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.$animation = mutableState;
        this.$visible = z;
        this.$onAnimationFinish = mutableInteractionSourceImpl;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2$1(SettingsImportViewModel settingsImportViewModel, Uri uri, boolean z, List list, Continuation continuation) {
        super(2, continuation);
        this.$alpha = settingsImportViewModel;
        this.$animation = uri;
        this.$visible = z;
        this.$onAnimationFinish = list;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2$1(boolean z, LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, GraphicsLayer graphicsLayer, Continuation continuation) {
        super(2, continuation);
        this.$visible = z;
        this.$alpha = lazyLayoutItemAnimation;
        this.$animation = finiteAnimationSpec;
        this.$onAnimationFinish = graphicsLayer;
    }
}
