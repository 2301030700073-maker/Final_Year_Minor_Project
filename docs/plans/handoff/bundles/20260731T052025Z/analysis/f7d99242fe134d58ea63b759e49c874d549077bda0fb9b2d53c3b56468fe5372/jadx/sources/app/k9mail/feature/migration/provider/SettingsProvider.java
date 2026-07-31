package app.k9mail.feature.migration.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.preferences.SettingsExporter;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsProvider extends ContentProvider implements KoinComponent {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy accountManager$delegate;
    public final Lazy settingsExporter$delegate;

    public SettingsProvider() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: app.k9mail.feature.migration.provider.SettingsProvider$special$$inlined$inject$default$1
            public final /* synthetic */ SettingsProvider $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                SettingsProvider settingsProvider = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(LegacyAccountDtoManager.class, AtomicFU.getKoinScope(settingsProvider), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(SettingsExporter.class, AtomicFU.getKoinScope(settingsProvider), (Qualifier) null, (ParametersHolder) null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.accountManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.settingsExporter$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: app.k9mail.feature.migration.provider.SettingsProvider$special$$inlined$inject$default$1
            public final /* synthetic */ SettingsProvider $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                SettingsProvider settingsProvider = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(LegacyAccountDtoManager.class, AtomicFU.getKoinScope(settingsProvider), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(SettingsExporter.class, AtomicFU.getKoinScope(settingsProvider), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        uri.getClass();
        throw new UnsupportedOperationException("not implemented");
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        uri.getClass();
        return "application/x-k9settings";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        uri.getClass();
        throw new UnsupportedOperationException("not implemented");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0116  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.ParcelFileDescriptor openFile(android.net.Uri r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.migration.provider.SettingsProvider.openFile(android.net.Uri, java.lang.String):android.os.ParcelFileDescriptor");
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        uri.getClass();
        throw new UnsupportedOperationException("not implemented");
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        uri.getClass();
        throw new UnsupportedOperationException("not implemented");
    }
}
