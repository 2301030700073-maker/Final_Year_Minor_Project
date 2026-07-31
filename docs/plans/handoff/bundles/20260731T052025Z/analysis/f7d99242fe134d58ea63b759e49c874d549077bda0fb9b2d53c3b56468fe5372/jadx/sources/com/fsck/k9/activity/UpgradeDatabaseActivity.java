package com.fsck.k9.activity;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.backends.AndroidAlarmManager;
import com.fsck.k9.service.DatabaseUpgradeService;
import com.fsck.k9.ui.base.BaseActivity;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpgradeDatabaseActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy accountManager$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(6, this));
    public AndroidAlarmManager.AnonymousClass1 mBroadcastReceiver;
    public IntentFilter mIntentFilter;
    public LocalBroadcastManager mLocalBroadcastManager;
    public Intent mStartIntent;
    public MaterialTextView mUpgradeText;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mStartIntent = (Intent) Utf8.SafeProcessor.getParcelableExtra(getIntent(), "start_intent", Intent.class);
        if (K9.INSTANCE.areDatabasesUpToDate()) {
            finish();
            startActivity(this.mStartIntent);
            return;
        }
        setLayout(R.layout.upgrade_databases);
        setTitle(R.string.upgrade_databases_title);
        View findViewById = findViewById(R.id.databaseUpgradeText);
        findViewById.getClass();
        this.mUpgradeText = (MaterialTextView) findViewById;
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this);
        localBroadcastManager.getClass();
        this.mLocalBroadcastManager = localBroadcastManager;
        this.mBroadcastReceiver = new AndroidAlarmManager.AnonymousClass1(4, this);
        IntentFilter intentFilter = new IntentFilter("DatabaseUpgradeService.upgradeProgress");
        intentFilter.addAction("DatabaseUpgradeService.upgradeComplete");
        this.mIntentFilter = intentFilter;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        LocalBroadcastManager localBroadcastManager = this.mLocalBroadcastManager;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mLocalBroadcastManager");
            throw null;
        }
        AndroidAlarmManager.AnonymousClass1 anonymousClass1 = this.mBroadcastReceiver;
        if (anonymousClass1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mBroadcastReceiver");
            throw null;
        }
        synchronized (localBroadcastManager.mReceivers) {
            try {
                ArrayList arrayList = (ArrayList) localBroadcastManager.mReceivers.remove(anonymousClass1);
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        LocalBroadcastManager.ReceiverRecord receiverRecord = (LocalBroadcastManager.ReceiverRecord) arrayList.get(size);
                        receiverRecord.dead = true;
                        for (int i = 0; i < receiverRecord.filter.countActions(); i++) {
                            String action = receiverRecord.filter.getAction(i);
                            ArrayList arrayList2 = (ArrayList) localBroadcastManager.mActions.get(action);
                            if (arrayList2 != null) {
                                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                    LocalBroadcastManager.ReceiverRecord receiverRecord2 = (LocalBroadcastManager.ReceiverRecord) arrayList2.get(size2);
                                    if (receiverRecord2.receiver == anonymousClass1) {
                                        receiverRecord2.dead = true;
                                        arrayList2.remove(size2);
                                    }
                                }
                                if (arrayList2.size() <= 0) {
                                    localBroadcastManager.mActions.remove(action);
                                }
                            }
                        }
                    }
                }
            } finally {
            }
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (K9.INSTANCE.areDatabasesUpToDate()) {
            finish();
            startActivity(this.mStartIntent);
            return;
        }
        LocalBroadcastManager localBroadcastManager = this.mLocalBroadcastManager;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mLocalBroadcastManager");
            throw null;
        }
        AndroidAlarmManager.AnonymousClass1 anonymousClass1 = this.mBroadcastReceiver;
        if (anonymousClass1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mBroadcastReceiver");
            throw null;
        }
        IntentFilter intentFilter = this.mIntentFilter;
        if (intentFilter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mIntentFilter");
            throw null;
        }
        synchronized (localBroadcastManager.mReceivers) {
            try {
                LocalBroadcastManager.ReceiverRecord receiverRecord = new LocalBroadcastManager.ReceiverRecord(intentFilter, anonymousClass1);
                ArrayList arrayList = (ArrayList) localBroadcastManager.mReceivers.get(anonymousClass1);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    localBroadcastManager.mReceivers.put(anonymousClass1, arrayList);
                }
                arrayList.add(receiverRecord);
                for (int i = 0; i < intentFilter.countActions(); i++) {
                    String action = intentFilter.getAction(i);
                    ArrayList arrayList2 = (ArrayList) localBroadcastManager.mActions.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        localBroadcastManager.mActions.put(action, arrayList2);
                    }
                    arrayList2.add(receiverRecord);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i2 = DatabaseUpgradeService.$r8$clinit;
        Intent intent = new Intent();
        intent.setClass(this, DatabaseUpgradeService.class);
        intent.setAction("com.fsck.k9.service.DatabaseUpgradeService.startService");
        startService(intent);
    }
}
