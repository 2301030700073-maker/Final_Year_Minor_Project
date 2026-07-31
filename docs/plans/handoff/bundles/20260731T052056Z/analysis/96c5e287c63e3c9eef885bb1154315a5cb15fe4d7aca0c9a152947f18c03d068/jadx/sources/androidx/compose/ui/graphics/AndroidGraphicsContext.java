package androidx.compose.ui.graphics;

import android.content.Context;
import android.os.Build;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayerV23;
import androidx.compose.ui.graphics.layer.GraphicsLayerV29;
import androidx.compose.ui.graphics.layer.GraphicsViewLayer;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.layer.view.ViewLayerContainer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.fragment.app.FragmentStateManager;
import coil3.util.AndroidSystemCallbacks$ComponentCallbacks;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidGraphicsContext implements GraphicsContext {
    public static boolean isRenderNodeCompatible = true;
    public final AndroidSystemCallbacks$ComponentCallbacks componentCallback;
    public boolean componentCallbackRegistered;
    public final Object lock = new Object();
    public final AndroidComposeView ownerView;
    public CardView.AnonymousClass1 shadowCache;
    public ViewLayerContainer viewLayerContainer;

    public AndroidGraphicsContext(AndroidComposeView androidComposeView) {
        this.ownerView = androidComposeView;
        AndroidSystemCallbacks$ComponentCallbacks androidSystemCallbacks$ComponentCallbacks = new AndroidSystemCallbacks$ComponentCallbacks(1, this);
        this.componentCallback = androidSystemCallbacks$ComponentCallbacks;
        if (androidComposeView.isAttachedToWindow()) {
            Context context = androidComposeView.getContext();
            if (!this.componentCallbackRegistered) {
                context.getApplicationContext().registerComponentCallbacks(androidSystemCallbacks$ComponentCallbacks);
                this.componentCallbackRegistered = true;
            }
        }
        androidComposeView.addOnAttachStateChangeListener(new FragmentStateManager.AnonymousClass1(3, this));
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final GraphicsLayer createGraphicsLayer() {
        GraphicsLayerImpl graphicsViewLayer;
        GraphicsLayerImpl graphicsLayerImpl;
        GraphicsLayer graphicsLayer;
        synchronized (this.lock) {
            try {
                AndroidComposeView androidComposeView = this.ownerView;
                int i = Build.VERSION.SDK_INT;
                if (i >= 29) {
                    CanvasZHelper.getUniqueDrawingId(androidComposeView);
                }
                if (i >= 29) {
                    graphicsLayerImpl = new GraphicsLayerV29();
                } else {
                    if (isRenderNodeCompatible) {
                        try {
                            graphicsViewLayer = new GraphicsLayerV23(this.ownerView, new CanvasHolder(), new CanvasDrawScope());
                        } catch (Throwable unused) {
                            isRenderNodeCompatible = false;
                            graphicsViewLayer = new GraphicsViewLayer(obtainViewLayerContainer(this.ownerView));
                        }
                    } else {
                        graphicsViewLayer = new GraphicsViewLayer(obtainViewLayerContainer(this.ownerView));
                    }
                    graphicsLayerImpl = graphicsViewLayer;
                }
                graphicsLayer = new GraphicsLayer(graphicsLayerImpl);
            } catch (Throwable th) {
                throw th;
            }
        }
        return graphicsLayer;
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final CardView.AnonymousClass1 getShadowContext() {
        CardView.AnonymousClass1 anonymousClass1 = this.shadowCache;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        CardView.AnonymousClass1 anonymousClass12 = new CardView.AnonymousClass1(13, false);
        this.shadowCache = anonymousClass12;
        return anonymousClass12;
    }

    public final DrawChildContainer obtainViewLayerContainer(AndroidComposeView androidComposeView) {
        ViewLayerContainer viewLayerContainer = this.viewLayerContainer;
        if (viewLayerContainer != null) {
            return viewLayerContainer;
        }
        ViewLayerContainer viewLayerContainer2 = new ViewLayerContainer(androidComposeView.getContext());
        viewLayerContainer2.setClipChildren(false);
        viewLayerContainer2.setClipToPadding(false);
        viewLayerContainer2.setTag(R.id.hide_graphics_layer_in_inspector_tag, Boolean.TRUE);
        androidComposeView.addView(viewLayerContainer2, -1);
        this.viewLayerContainer = viewLayerContainer2;
        return viewLayerContainer2;
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final void releaseGraphicsLayer(GraphicsLayer graphicsLayer) {
        synchronized (this.lock) {
            if (!graphicsLayer.isReleased) {
                graphicsLayer.isReleased = true;
                graphicsLayer.discardContentIfReleasedAndHaveNoParentLayerUsages();
            }
        }
    }
}
