package net.thunderbird.app.common;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$Onboarding;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.ui.base.BaseActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.app.common.startup.DefaultDatabaseUpgradeInterceptor;
import net.thunderbird.app.common.startup.DefaultStartupRouter;
import net.thunderbird.core.android.account.LegacyAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MainActivity extends BaseActivity {
    public final Lazy databaseUpgradeInterceptor$delegate;
    public final Lazy startupRouter$delegate;

    public MainActivity() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: net.thunderbird.app.common.MainActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MainActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MainActivity mainActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(mainActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultStartupRouter.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(mainActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.startupRouter$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.databaseUpgradeInterceptor$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.MainActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MainActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MainActivity mainActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(mainActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultStartupRouter.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(mainActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                }
            }
        });
    }

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DefaultDatabaseUpgradeInterceptor defaultDatabaseUpgradeInterceptor = (DefaultDatabaseUpgradeInterceptor) this.databaseUpgradeInterceptor$delegate.getValue();
        Intent intent = getIntent();
        intent.getClass();
        defaultDatabaseUpgradeInterceptor.getClass();
        if (DefaultDatabaseUpgradeInterceptor.checkAndHandleUpgrade(this, intent)) {
            finish();
            return;
        }
        DefaultStartupRouter defaultStartupRouter = (DefaultStartupRouter) this.startupRouter$delegate.getValue();
        defaultStartupRouter.getClass();
        List accounts = defaultStartupRouter.accountManager.getAccounts();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) accounts;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!((LegacyAccount) next).isFinishedSetup) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            defaultStartupRouter.accountRemover.removeAccountAsync(((LegacyAccount) it2.next()).uuid);
        }
        if (!arrayList2.isEmpty()) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                if (((LegacyAccount) it3.next()).isFinishedSetup) {
                    Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                    MessageHomeActivity.Companion.launch(this);
                    break;
                }
            }
        }
        FeatureLauncherTarget$Onboarding featureLauncherTarget$Onboarding = FeatureLauncherTarget$Onboarding.INSTANCE;
        featureLauncherTarget$Onboarding.getClass();
        Intent intent2 = new Intent(this, (Class<?>) FeatureLauncherActivity.class);
        intent2.setData((Uri) featureLauncherTarget$Onboarding.key);
        Integer num = (Integer) featureLauncherTarget$Onboarding.defaultValue;
        if (num != null) {
            intent2.setFlags(num.intValue());
        }
        startActivity(intent2);
        finish();
    }
}
