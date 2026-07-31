package org.maplibre.android.maps;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import java.util.concurrent.CopyOnWriteArrayList;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapChangeReceiver {
    public final Object onCameraDidChangeListenerList;
    public final Object onCameraIsChangingListenerList;
    public final Object onCameraWillChangeListenerList;
    public final Object onCanRemoveUnusedStyleImageListenerList;
    public final Object onDidBecomeIdleListenerList;
    public final Object onDidFailLoadingMapListenerList;
    public final Object onDidFinishLoadingMapListenerList;
    public final Object onDidFinishLoadingStyleListenerList;
    public final Object onDidFinishRenderingFrameList;
    public final Object onDidFinishRenderingFrameWithStatsList;
    public final Object onDidFinishRenderingMapListenerList;
    public final Object onGlyphsErrorList;
    public final Object onGlyphsLoadedList;
    public final Object onGlyphsRequestedList;
    public final Object onPostCompileShaderList;
    public final Object onPreCompileShaderList;
    public final Object onShaderCompileFailedList;
    public final Object onSourceChangedListenerList;
    public final Object onSpriteErrorList;
    public final Object onSpriteLoadedList;
    public final Object onSpriteRequestedList;
    public final Object onStyleImageMissingListenerList;
    public final Object onTileActionList;
    public final Object onWillStartLoadingMapListenerList;
    public final Object onWillStartRenderingFrameList;
    public final Object onWillStartRenderingMapListenerList;

    public MapChangeReceiver() {
        this.onCameraWillChangeListenerList = new CopyOnWriteArrayList();
        this.onCameraIsChangingListenerList = new CopyOnWriteArrayList();
        this.onCameraDidChangeListenerList = new CopyOnWriteArrayList();
        this.onWillStartLoadingMapListenerList = new CopyOnWriteArrayList();
        this.onDidFinishLoadingMapListenerList = new CopyOnWriteArrayList();
        this.onDidFailLoadingMapListenerList = new CopyOnWriteArrayList();
        this.onWillStartRenderingFrameList = new CopyOnWriteArrayList();
        this.onDidFinishRenderingFrameList = new CopyOnWriteArrayList();
        this.onDidFinishRenderingFrameWithStatsList = new CopyOnWriteArrayList();
        this.onWillStartRenderingMapListenerList = new CopyOnWriteArrayList();
        this.onDidFinishRenderingMapListenerList = new CopyOnWriteArrayList();
        this.onDidBecomeIdleListenerList = new CopyOnWriteArrayList();
        this.onDidFinishLoadingStyleListenerList = new CopyOnWriteArrayList();
        this.onSourceChangedListenerList = new CopyOnWriteArrayList();
        this.onStyleImageMissingListenerList = new CopyOnWriteArrayList();
        this.onCanRemoveUnusedStyleImageListenerList = new CopyOnWriteArrayList();
        this.onPreCompileShaderList = new CopyOnWriteArrayList();
        this.onPostCompileShaderList = new CopyOnWriteArrayList();
        this.onShaderCompileFailedList = new CopyOnWriteArrayList();
        this.onGlyphsLoadedList = new CopyOnWriteArrayList();
        this.onGlyphsErrorList = new CopyOnWriteArrayList();
        this.onGlyphsRequestedList = new CopyOnWriteArrayList();
        this.onTileActionList = new CopyOnWriteArrayList();
        this.onSpriteLoadedList = new CopyOnWriteArrayList();
        this.onSpriteErrorList = new CopyOnWriteArrayList();
        this.onSpriteRequestedList = new CopyOnWriteArrayList();
    }

    public MapChangeReceiver(CoordinatorLayout coordinatorLayout, MaterialButton materialButton, NestedScrollView nestedScrollView, GoneIfEmptyTextView goneIfEmptyTextView, View view, TextView textView, Space space, TextView textView2, CoordinatorLayout coordinatorLayout2, WikiErrorView wikiErrorView, ProgressBar progressBar, TextView textView3, WikiCardView wikiCardView, TextView textView4, ImageView imageView, LinearLayout linearLayout, TextView textView5, ConstraintLayout constraintLayout, TextView textView6, FaceAndColorDetectImageView faceAndColorDetectImageView, FrameLayout frameLayout, TextView textView7, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, View view2) {
        this.onCameraWillChangeListenerList = coordinatorLayout;
        this.onCameraIsChangingListenerList = materialButton;
        this.onCameraDidChangeListenerList = nestedScrollView;
        this.onWillStartLoadingMapListenerList = goneIfEmptyTextView;
        this.onDidFinishLoadingMapListenerList = view;
        this.onDidFailLoadingMapListenerList = textView;
        this.onWillStartRenderingFrameList = space;
        this.onDidFinishRenderingFrameList = textView2;
        this.onDidFinishRenderingFrameWithStatsList = coordinatorLayout2;
        this.onWillStartRenderingMapListenerList = wikiErrorView;
        this.onDidFinishRenderingMapListenerList = progressBar;
        this.onDidBecomeIdleListenerList = textView3;
        this.onDidFinishLoadingStyleListenerList = wikiCardView;
        this.onSourceChangedListenerList = textView4;
        this.onStyleImageMissingListenerList = imageView;
        this.onCanRemoveUnusedStyleImageListenerList = linearLayout;
        this.onPreCompileShaderList = textView5;
        this.onPostCompileShaderList = constraintLayout;
        this.onShaderCompileFailedList = textView6;
        this.onGlyphsLoadedList = faceAndColorDetectImageView;
        this.onGlyphsErrorList = frameLayout;
        this.onGlyphsRequestedList = textView7;
        this.onTileActionList = materialButton2;
        this.onSpriteLoadedList = materialButton3;
        this.onSpriteErrorList = materialButton4;
        this.onSpriteRequestedList = view2;
    }
}
