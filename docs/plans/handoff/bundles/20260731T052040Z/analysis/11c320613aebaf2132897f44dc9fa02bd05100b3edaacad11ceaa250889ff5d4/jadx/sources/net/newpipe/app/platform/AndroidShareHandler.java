package net.newpipe.app.platform;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.Latch;
import co.touchlab.kermit.Logger$Companion;
import co.touchlab.kermit.Severity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidShareHandler implements ShareHandler {
    public final Context context;

    public AndroidShareHandler(Context context) {
        this.context = context;
    }

    public final void openUrlInBrowser(String str) {
        str.getClass();
        try {
            CardView.AnonymousClass1 build = new Latch(1).build();
            ((Intent) build.mCardBackground).addFlags(268435456);
            Context context = this.context;
            Uri parse = Uri.parse(str);
            Intent intent = (Intent) build.mCardBackground;
            intent.setData(parse);
            context.startActivity(intent, (Bundle) build.this$0);
        } catch (Exception e) {
            Logger$Companion logger$Companion = Logger$Companion.Companion;
            logger$Companion.getClass();
            Severity severity = Severity.Error;
            if (logger$Companion.config._minSeverity.compareTo(severity) <= 0) {
                logger$Companion.processLog(severity, e, "Failed to share URL");
            }
        }
    }
}
