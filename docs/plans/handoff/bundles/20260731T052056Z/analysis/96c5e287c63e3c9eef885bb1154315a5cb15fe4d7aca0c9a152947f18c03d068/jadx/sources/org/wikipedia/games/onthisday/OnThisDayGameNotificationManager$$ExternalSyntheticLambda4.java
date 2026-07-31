package org.wikipedia.games.onthisday;

import android.view.View;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameNotificationManager$$ExternalSyntheticLambda4 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OnThisDayGameActivity f$0;

    public /* synthetic */ OnThisDayGameNotificationManager$$ExternalSyntheticLambda4(OnThisDayGameActivity onThisDayGameActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = onThisDayGameActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        OnThisDayGameActivity onThisDayGameActivity = this.f$0;
        switch (i) {
            case 0:
                WikiGamesEvent.submit$default(1016, null, null, "undo_click", "notification_snackbar", "game_end", null, null);
                NodeUtils.disableNotifications(onThisDayGameActivity, false);
                onThisDayGameActivity.invalidateOptionsMenu();
                break;
            default:
                WikiGamesEvent.submit$default(1016, null, null, "undo_click", "notification_snackbar", "game_end", null, null);
                NodeUtils.enableNotifications(onThisDayGameActivity, false);
                onThisDayGameActivity.invalidateOptionsMenu();
                break;
        }
    }
}
