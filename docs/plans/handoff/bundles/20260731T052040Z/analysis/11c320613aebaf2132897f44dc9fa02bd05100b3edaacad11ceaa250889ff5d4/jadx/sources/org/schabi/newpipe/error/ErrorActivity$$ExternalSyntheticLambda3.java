package org.schabi.newpipe.error;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.transition.Transition;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ErrorActivity$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ ErrorActivity$$ExternalSyntheticLambda3(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Context context = this.f$0;
        switch (i2) {
            case 0:
                ErrorActivity.Companion companion = ErrorActivity.Companion;
                Transition.Impl26.openUrlInApp(context, context.getString(R.string.privacy_policy_url));
                break;
            case 1:
                Transition.Impl26.installApp(context, context.getString(R.string.vlc_package));
                break;
            case 2:
                try {
                    context.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION"));
                    break;
                } catch (ActivityNotFoundException unused) {
                    return;
                }
            default:
                Transition.Impl26.installApp(context, context.getString(R.string.kore_package));
                break;
        }
    }
}
