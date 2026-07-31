package com.fsck.k9.activity;

import android.content.Intent;
import android.net.Uri;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountSetup;
import com.fsck.k9.ui.managefolders.ManageFoldersActivity;
import com.fsck.k9.ui.settings.SettingsActivity;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageHomeActivity$$ExternalSyntheticLambda5 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageHomeActivity f$0;

    public /* synthetic */ MessageHomeActivity$$ExternalSyntheticLambda5(MessageHomeActivity messageHomeActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = messageHomeActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageHomeActivity messageHomeActivity = this.f$0;
        switch (i) {
            case 0:
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                messageHomeActivity.openUnifiedFolders();
                return unit;
            case 1:
                Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
                return Options.Companion.parametersOf(messageHomeActivity);
            case 2:
                LegacyAccountDto legacyAccountDto = messageHomeActivity.account;
                if (legacyAccountDto == null) {
                    Log.e("Tried to open \"Manage folders\", but no account selected!", new Object[0]);
                } else {
                    Intent intent = new Intent(messageHomeActivity, (Class<?>) ManageFoldersActivity.class);
                    intent.putExtra("account", legacyAccountDto.uuid);
                    messageHomeActivity.startActivity(intent);
                }
                return unit;
            case 3:
                Lazy lazy3 = MessageHomeActivity.coreResourceProvider$delegate;
                messageHomeActivity.startActivity(new Intent(messageHomeActivity, (Class<?>) SettingsActivity.class));
                return unit;
            case 4:
                Lazy lazy4 = MessageHomeActivity.coreResourceProvider$delegate;
                FeatureLauncherTarget$AccountSetup featureLauncherTarget$AccountSetup = FeatureLauncherTarget$AccountSetup.INSTANCE;
                featureLauncherTarget$AccountSetup.getClass();
                Intent intent2 = new Intent(messageHomeActivity, (Class<?>) FeatureLauncherActivity.class);
                intent2.setData((Uri) featureLauncherTarget$AccountSetup.key);
                Integer num = (Integer) featureLauncherTarget$AccountSetup.defaultValue;
                if (num != null) {
                    intent2.setFlags(num.intValue());
                }
                messageHomeActivity.startActivity(intent2);
                return unit;
            default:
                Lazy lazy5 = MessageHomeActivity.coreResourceProvider$delegate;
                return new MessageHomeActivity$createDrawerListener$1(messageHomeActivity);
        }
    }
}
