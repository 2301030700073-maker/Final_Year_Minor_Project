package org.schabi.newpipe.databinding;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.preference.PreferenceManager;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.imageview.ShapeableImageView;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistHeaderBinding implements ViewBinding {
    public final Object playlistDescription;
    public final Object playlistDescriptionReadMore;
    public final Object playlistStreamCount;
    public final Object playlistTitleView;
    public final Object rootView;
    public final Object uploaderAvatarView;
    public final Object uploaderLayout;
    public final Object uploaderName;

    public PlaylistHeaderBinding(Context context) {
        AppDatabase appKt = AppKt.getInstance(context);
        this.rootView = appKt;
        this.uploaderLayout = appKt.streamDAO();
        this.playlistDescription = appKt.streamHistoryDAO();
        this.playlistDescriptionReadMore = appKt.searchHistoryDAO();
        this.playlistStreamCount = appKt.streamStateDAO();
        this.playlistTitleView = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        this.uploaderName = context.getString(R.string.enable_search_history_key);
        this.uploaderAvatarView = context.getString(R.string.enable_watch_history_key);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return (RelativeLayout) this.rootView;
    }

    public PlaylistHeaderBinding(RelativeLayout relativeLayout, Dispatcher dispatcher, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3, NewPipeTextView newPipeTextView4, ShapeableImageView shapeableImageView, RelativeLayout relativeLayout2, NewPipeTextView newPipeTextView5) {
        this.rootView = relativeLayout;
        this.playlistDescription = newPipeTextView;
        this.playlistDescriptionReadMore = newPipeTextView2;
        this.playlistStreamCount = newPipeTextView3;
        this.playlistTitleView = newPipeTextView4;
        this.uploaderAvatarView = shapeableImageView;
        this.uploaderLayout = relativeLayout2;
        this.uploaderName = newPipeTextView5;
    }
}
