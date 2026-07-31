package com.fsck.k9.storage.migrations;

import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.Core$special$$inlined$inject$default$4;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.mailstore.LocalStore;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.io.Sink$CC;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MigrationTo90 implements KoinComponent {
    public final Lazy clientInfoAppName$delegate;
    public final Lazy clientInfoAppVersion$delegate;
    public final Lazy oAuth2TokenProviderFactory$delegate;
    public final Lazy trustedSocketFactory$delegate;

    public MigrationTo90(SQLiteDatabase sQLiteDatabase, LocalStore.AnonymousClass3 anonymousClass3) {
        sQLiteDatabase.getClass();
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(this, 18);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.trustedSocketFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        this.clientInfoAppName$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Core$special$$inlined$inject$default$4(this, new StringQualifier("ClientInfoAppName"), 1));
        this.clientInfoAppVersion$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Core$special$$inlined$inject$default$4(this, new StringQualifier("ClientInfoAppVersion"), 2));
        this.oAuth2TokenProviderFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(this, 19));
    }

    public static String buildQuery$storage(String str) {
        str.getClass();
        return StringsKt__IndentKt.trimMargin$default("\n            |UPDATE folders\n            |    SET server_id = REPLACE(server_id, '" + str + "', '')\n            |WHERE\n            |    server_id IS NOT NULL\n            |    AND server_id LIKE '" + str + "%'\n            |    AND type <> 'outbox'\n            |    AND local_only <> 1\n        ");
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }
}
