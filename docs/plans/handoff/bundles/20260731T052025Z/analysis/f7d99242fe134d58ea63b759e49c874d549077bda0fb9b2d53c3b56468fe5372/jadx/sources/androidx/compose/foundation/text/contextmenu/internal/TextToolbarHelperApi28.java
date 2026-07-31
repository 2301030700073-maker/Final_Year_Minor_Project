package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import android.view.textclassifier.TextClassification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextToolbarHelperApi28 {
    public static void $r8$lambda$OCruGXIU9Y1A_I_6aQoNH5DBTWw(RemoteAction remoteAction) {
        PendingIntent actionIntent = remoteAction.getActionIntent();
        if (Build.VERSION.SDK_INT >= 34) {
            TextClassificationHelper34.sendIntentAllowBackgroundActivityStart(actionIntent);
        } else {
            actionIntent.send();
        }
    }

    public static void addMenuItem(Menu menu, int i, Context context, TextClassification textClassification, int i2) {
        if (i2 < 0) {
            MenuItem add = menu.add(R.id.textAssist, R.id.textAssist, i, textClassification.getLabel());
            add.setShowAsAction(2);
            add.setIcon(textClassification.getIcon());
            add.setOnMenuItemClickListener(new TextToolbarHelperApi28$$ExternalSyntheticLambda0(0, context, textClassification));
            return;
        }
        boolean z = i2 == 0;
        final RemoteAction remoteAction = textClassification.getActions().get(i2);
        MenuItem add2 = menu.add(R.id.textAssist, z ? 16908353 : 0, i, remoteAction.getTitle());
        add2.setShowAsAction(z ? 2 : 0);
        if (z || remoteAction.shouldShowIcon()) {
            add2.setIcon(remoteAction.getIcon().loadDrawable(context));
        }
        add2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextToolbarHelperApi28$$ExternalSyntheticLambda1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                TextToolbarHelperApi28.$r8$lambda$OCruGXIU9Y1A_I_6aQoNH5DBTWw(remoteAction);
                return true;
            }
        });
    }
}
