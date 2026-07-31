package net.thunderbird.core.ui.compose.designsystem.atom.icon;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IconKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(Modifier modifier, String str, Alignment alignment, int i, int i2) {
        this.f$1 = modifier;
        this.f$0 = str;
        this.f$3 = alignment;
        this.f$4 = i;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Object obj3 = this.f$0;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$1;
        Object obj5 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AtomicFU.m1009IconxqIIw2o((ImageVector) obj3, (Modifier) obj4, (Color) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$5);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$5 | 1);
                LazyLayoutKt.LazyLayoutPinnableItem(this.f$0, this.f$4, (LazyLayoutPinnedItemList) obj4, (ComposableLambdaImpl) obj5, (Composer) obj, updateChangedFlags);
                break;
            case 2:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.LoadingView((Modifier) obj4, (String) obj3, (Alignment) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$5);
                break;
            default:
                ((Integer) obj2).getClass();
                Data.Companion.NotificationActionButton((String) obj3, (Function0) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$5);
                break;
        }
        return unit;
    }

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(ImageVector imageVector, Modifier modifier, Color color, int i, int i2) {
        this.f$0 = imageVector;
        this.f$1 = modifier;
        this.f$3 = color;
        this.f$4 = i;
        this.f$5 = i2;
    }

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(Object obj, int i, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f$0 = obj;
        this.f$4 = i;
        this.f$1 = lazyLayoutPinnedItemList;
        this.f$3 = composableLambdaImpl;
        this.f$5 = i2;
    }

    public /* synthetic */ IconKt$$ExternalSyntheticLambda0(String str, Function0 function0, Modifier modifier, int i, int i2) {
        this.f$0 = str;
        this.f$3 = function0;
        this.f$1 = modifier;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
