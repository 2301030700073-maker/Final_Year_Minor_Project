package androidx.compose.animation.core;

import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Transition$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ Transition$$ExternalSyntheticLambda2(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        this.$r8$classId = 2;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).intValue();
                ((Transition) obj4).animateTo$animation_core(obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ((LazyListItemProviderImpl) obj4).Item(i2, Updater.updateChangedFlags(1), (Composer) obj, obj3);
                break;
            case 2:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    lazyLayoutItemProvider.Item(i2, 0, gapComposer, obj3);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                ((PagerLazyLayoutItemProvider) obj4).Item(i2, Updater.updateChangedFlags(1), (Composer) obj, obj3);
                break;
            case 4:
                ((Integer) obj2).getClass();
                MaterialThemeKt.MaterialExpressiveTheme((ColorScheme) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                Updater.CompositionLocalProvider((ProvidedValue) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).intValue();
                Updater.CompositionLocalProvider((ProvidedValue[]) obj4, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj4).invoke(obj3, (Composer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
        }
        return unit;
    }

    public /* synthetic */ Transition$$ExternalSyntheticLambda2(int i, Object obj, Object obj2, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
    }

    public /* synthetic */ Transition$$ExternalSyntheticLambda2(LazyLayoutItemProvider lazyLayoutItemProvider, int i, Object obj, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }
}
