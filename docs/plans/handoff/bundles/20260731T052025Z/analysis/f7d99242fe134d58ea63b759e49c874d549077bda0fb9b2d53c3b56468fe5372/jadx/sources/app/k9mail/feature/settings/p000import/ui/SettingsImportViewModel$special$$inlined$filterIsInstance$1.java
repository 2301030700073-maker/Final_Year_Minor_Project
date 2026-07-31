package app.k9mail.feature.settings.p000import.ui;

import app.k9mail.feature.settings.p000import.ui.SettingsListItem;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportViewModel$special$$inlined$filterIsInstance$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public static final SettingsImportViewModel$special$$inlined$filterIsInstance$1 INSTANCE$1 = new SettingsImportViewModel$special$$inlined$filterIsInstance$1(1);
    public static final SettingsImportViewModel$special$$inlined$filterIsInstance$1 INSTANCE = new SettingsImportViewModel$special$$inlined$filterIsInstance$1(0);

    public /* synthetic */ SettingsImportViewModel$special$$inlined$filterIsInstance$1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
        }
        return Boolean.valueOf(obj instanceof SettingsListItem.Account);
    }
}
