package org.schabi.newpipe.player.seekbarpreview;

import android.R;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.UUID;
import kotlin.io.CloseableKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Comparable f$3;

    public /* synthetic */ SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1(Object obj, int i, Object obj2, Comparable comparable, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
        this.f$3 = comparable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Comparable comparable = this.f$3;
        Object obj = this.f$2;
        int i2 = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                TimeAgoParser timeAgoParser = (TimeAgoParser) obj2;
                List list = (List) obj;
                UUID uuid = (UUID) comparable;
                timeAgoParser.getClass();
                try {
                    timeAgoParser.resetFromAsync(i2, list, uuid);
                    break;
                } catch (Exception e) {
                    Log.e("SeekbarPrevThumbHolder", "Failed to execute async", e);
                    return;
                }
            default:
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) obj;
                Preference preference = (Preference) comparable;
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = ((RecyclerView) obj2).findViewHolderForAdapterPosition(i2);
                if (findViewHolderForAdapterPosition != null) {
                    Drawable background = findViewHolderForAdapterPosition.itemView.getBackground();
                    if (background instanceof RippleDrawable) {
                        RippleDrawable rippleDrawable = (RippleDrawable) background;
                        rippleDrawable.setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
                        new Handler(Looper.getMainLooper()).postDelayed(new ReportExecutor$$ExternalSyntheticLambda0(rippleDrawable, 29), 1000L);
                        break;
                    }
                }
                CloseableKt.highlightFallback(preferenceFragmentCompat, preference);
                break;
        }
    }
}
