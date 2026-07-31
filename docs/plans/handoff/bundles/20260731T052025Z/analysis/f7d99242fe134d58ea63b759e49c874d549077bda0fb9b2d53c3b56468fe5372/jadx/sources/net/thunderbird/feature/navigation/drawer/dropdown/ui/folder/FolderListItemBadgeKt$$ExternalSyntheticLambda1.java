package net.thunderbird.feature.navigation.drawer.dropdown.ui.folder;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FolderListItemBadgeKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ FolderListItemBadgeKt$$ExternalSyntheticLambda1(int i, int i2, boolean z, Modifier modifier, int i3, int i4) {
        this.$r8$classId = i4;
        this.f$0 = i;
        this.f$1 = i2;
        this.f$2 = z;
        this.f$3 = modifier;
        this.f$4 = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$4;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Okio.FolderCountAndStarredBadge(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                CharsKt__CharKt.AccountCountAndStarredBadge(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }
}
