package androidx.compose.foundation.layout;

import android.graphics.Path;
import android.os.Build;
import android.view.View;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCompat;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.WeakHashMap;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowInsetsHolder {
    public static final WeakHashMap viewMap = new WeakHashMap();
    public int accessCount;
    public final AndroidWindowInsets captionBar;
    public final ValueInsets captionBarIgnoringVisibility;
    public final boolean consumes;
    public final ParcelableSnapshotMutableState cutoutPath$delegate;
    public final AndroidWindowInsets displayCutout;
    public final AndroidWindowInsets ime;
    public final ValueInsets imeAnimationSource;
    public final ValueInsets imeAnimationTarget;
    public final InsetsListener insetsListener;
    public final AndroidWindowInsets mandatorySystemGestures;
    public final AndroidWindowInsets navigationBars;
    public final ValueInsets navigationBarsIgnoringVisibility;
    public final UnionInsets safeDrawing;
    public final AndroidWindowInsets statusBars;
    public final ValueInsets statusBarsIgnoringVisibility;
    public final AndroidWindowInsets systemBars;
    public final ValueInsets systemBarsIgnoringVisibility;
    public final AndroidWindowInsets systemGestures;
    public final AndroidWindowInsets tappableElement;
    public final ValueInsets tappableElementIgnoringVisibility;
    public final ValueInsets waterfall;

    public WindowInsetsHolder(View view) {
        AndroidWindowInsets androidWindowInsets = new AndroidWindowInsets(4, "captionBar");
        this.captionBar = androidWindowInsets;
        AndroidWindowInsets androidWindowInsets2 = new AndroidWindowInsets(128, "displayCutout");
        this.displayCutout = androidWindowInsets2;
        AndroidWindowInsets androidWindowInsets3 = new AndroidWindowInsets(8, "ime");
        this.ime = androidWindowInsets3;
        AndroidWindowInsets androidWindowInsets4 = new AndroidWindowInsets(32, "mandatorySystemGestures");
        this.mandatorySystemGestures = androidWindowInsets4;
        AndroidWindowInsets androidWindowInsets5 = new AndroidWindowInsets(2, "navigationBars");
        this.navigationBars = androidWindowInsets5;
        AndroidWindowInsets androidWindowInsets6 = new AndroidWindowInsets(1, "statusBars");
        this.statusBars = androidWindowInsets6;
        AndroidWindowInsets androidWindowInsets7 = new AndroidWindowInsets(519, "systemBars");
        this.systemBars = androidWindowInsets7;
        AndroidWindowInsets androidWindowInsets8 = new AndroidWindowInsets(16, "systemGestures");
        this.systemGestures = androidWindowInsets8;
        AndroidWindowInsets androidWindowInsets9 = new AndroidWindowInsets(64, "tappableElement");
        this.tappableElement = androidWindowInsets9;
        ValueInsets valueInsets = new ValueInsets(new InsetsValues(0, 0, 0, 0), "waterfall");
        this.waterfall = valueInsets;
        this.cutoutPath$delegate = Updater.mutableStateOf$default(null);
        UnionInsets unionInsets = new UnionInsets(new UnionInsets(androidWindowInsets7, androidWindowInsets3), androidWindowInsets2);
        this.safeDrawing = unionInsets;
        new UnionInsets(unionInsets, new UnionInsets(new UnionInsets(new UnionInsets(androidWindowInsets9, androidWindowInsets4), androidWindowInsets8), valueInsets));
        this.captionBarIgnoringVisibility = OffsetKt.valueInsetsIgnoringVisibility(4, "captionBarIgnoringVisibility");
        this.navigationBarsIgnoringVisibility = OffsetKt.valueInsetsIgnoringVisibility(2, "navigationBarsIgnoringVisibility");
        this.statusBarsIgnoringVisibility = OffsetKt.valueInsetsIgnoringVisibility(1, "statusBarsIgnoringVisibility");
        this.systemBarsIgnoringVisibility = OffsetKt.valueInsetsIgnoringVisibility(519, "systemBarsIgnoringVisibility");
        this.tappableElementIgnoringVisibility = OffsetKt.valueInsetsIgnoringVisibility(64, "tappableElementIgnoringVisibility");
        this.imeAnimationTarget = new ValueInsets(new InsetsValues(0, 0, 0, 0), "imeAnimationTarget");
        this.imeAnimationSource = new ValueInsets(new InsetsValues(0, 0, 0, 0), "imeAnimationSource");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(R.id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.consumes = bool != null ? bool.booleanValue() : false;
        this.insetsListener = new InsetsListener(this);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        WindowInsetsCompat rootWindowInsets = ViewCompat.Api23Impl.getRootWindowInsets(view);
        if (rootWindowInsets != null) {
            WindowInsetsCompat.Impl impl = rootWindowInsets.mImpl;
            androidWindowInsets.setVisible(impl.isVisible(4));
            androidWindowInsets2.setVisible(impl.isVisible(128));
            androidWindowInsets3.setVisible(impl.isVisible(8));
            androidWindowInsets4.setVisible(impl.isVisible(32));
            androidWindowInsets5.setVisible(impl.isVisible(2));
            androidWindowInsets6.setVisible(impl.isVisible(1));
            androidWindowInsets7.setVisible(impl.isVisible(519));
            androidWindowInsets8.setVisible(impl.isVisible(16));
            androidWindowInsets9.setVisible(impl.isVisible(64));
        }
    }

    public static void update$default(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat) {
        boolean z = false;
        windowInsetsHolder.captionBar.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.ime.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.displayCutout.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.navigationBars.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.statusBars.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.systemBars.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.systemGestures.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.tappableElement.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.mandatorySystemGestures.update$foundation_layout(windowInsetsCompat, 0);
        windowInsetsHolder.captionBarIgnoringVisibility.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsetsIgnoringVisibility(4)));
        windowInsetsHolder.navigationBarsIgnoringVisibility.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsetsIgnoringVisibility(2)));
        windowInsetsHolder.statusBarsIgnoringVisibility.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsetsIgnoringVisibility(1)));
        windowInsetsHolder.systemBarsIgnoringVisibility.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsetsIgnoringVisibility(519)));
        windowInsetsHolder.tappableElementIgnoringVisibility.setValue$foundation_layout(OffsetKt.toInsetsValues(windowInsetsCompat.mImpl.getInsetsIgnoringVisibility(64)));
        DisplayCutoutCompat displayCutout = windowInsetsCompat.mImpl.getDisplayCutout();
        windowInsetsHolder.waterfall.setValue$foundation_layout(OffsetKt.toInsetsValues(displayCutout != null ? displayCutout.getWaterfallInsets() : Insets.NONE));
        AndroidPath androidPath = null;
        if (displayCutout != null) {
            Path cutoutPath = Build.VERSION.SDK_INT >= 31 ? DisplayCompat.getCutoutPath(displayCutout.mDisplayCutout) : null;
            if (cutoutPath != null) {
                androidPath = new AndroidPath(cutoutPath);
            }
        }
        windowInsetsHolder.cutoutPath$delegate.setValue(androidPath);
        synchronized (SnapshotKt.lock) {
            MutableScatterSet mutableScatterSet = SnapshotKt.globalSnapshot.modified;
            if (mutableScatterSet != null) {
                if (mutableScatterSet.isNotEmpty()) {
                    z = true;
                }
            }
        }
        if (z) {
            SnapshotKt.advanceGlobalSnapshot();
        }
    }

    public final void incrementAccessors(View view) {
        if (this.accessCount == 0) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            InsetsListener insetsListener = this.insetsListener;
            ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(view, insetsListener);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(insetsListener);
            WindowInsetsAnimationCompat.setCallback(view, insetsListener);
        }
        this.accessCount++;
    }
}
