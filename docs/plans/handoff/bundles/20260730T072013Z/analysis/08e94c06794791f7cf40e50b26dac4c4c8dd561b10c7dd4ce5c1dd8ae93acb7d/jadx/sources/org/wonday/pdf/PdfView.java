package org.wonday.pdf;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.pdf.PdfRenderer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SizeF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.ReactNativeBlobUtil.ReactNativeBlobUtilConst;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.link.LinkHandler;
import com.github.barteksc.pdfviewer.listener.OnDrawListener;
import com.github.barteksc.pdfviewer.listener.OnErrorListener;
import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;
import com.github.barteksc.pdfviewer.listener.OnPageChangeListener;
import com.github.barteksc.pdfviewer.listener.OnPageScrollListener;
import com.github.barteksc.pdfviewer.listener.OnTapListener;
import com.github.barteksc.pdfviewer.model.LinkTapEvent;
import com.github.barteksc.pdfviewer.util.Constants;
import com.github.barteksc.pdfviewer.util.FitPolicy;
import com.google.gson.Gson;
import io.sentry.android.core.SentryLogcatAdapter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.wonday.pdf.events.TopChangeEvent;

/* loaded from: classes2.dex */
public class PdfView extends PDFView implements OnPageChangeListener, OnLoadCompleteListener, OnErrorListener, OnTapListener, OnDrawListener, OnPageScrollListener, LinkHandler {
    private boolean autoSpacing;
    private int bookmarks;
    private boolean enableAnnotationRendering;
    private boolean enableAntialiasing;
    private boolean enableDoubleTapZoom;
    private boolean enablePaging;
    private boolean enableRTL;
    private FitPolicy fitPolicy;
    private boolean horizontal;
    private float lastPageHeight;
    private float lastPageWidth;
    private float maxScale;
    private float minScale;
    private int oldH;
    private int oldW;
    private float originalWidth;
    private int page;
    private boolean pageFling;
    private boolean pageSnap;
    private int[] pagesArrays;
    private String password;
    private String path;
    private float scale;
    private boolean scrollEnabled;
    private boolean singlePage;
    private int spacing;
    private int totalPages;

    public PdfView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.page = 1;
        this.horizontal = false;
        this.scale = 1.0f;
        this.minScale = 1.0f;
        this.maxScale = 3.0f;
        this.spacing = 10;
        this.password = "";
        this.enableAntialiasing = true;
        this.enableAnnotationRendering = true;
        this.enableDoubleTapZoom = true;
        this.enablePaging = false;
        this.autoSpacing = false;
        this.pageFling = false;
        this.pageSnap = false;
        this.fitPolicy = FitPolicy.WIDTH;
        this.singlePage = false;
        this.scrollEnabled = true;
        this.enableRTL = false;
        this.originalWidth = 0.0f;
        this.lastPageWidth = 0.0f;
        this.lastPageHeight = 0.0f;
        this.oldW = 0;
        this.oldH = 0;
        this.totalPages = 0;
        this.bookmarks = 0;
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnPageChangeListener
    public void onPageChanged(int i, int i2) {
        int i3 = i + 1;
        this.page = i3;
        showLog(String.format("%s %s / %s", this.path, Integer.valueOf(i3), Integer.valueOf(i2)));
        WritableMap createMap = Arguments.createMap();
        createMap.putString("message", "pageChanged|" + i3 + "|" + i2);
        final EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
        final TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
        if (eventDispatcherForReactTag != null) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: org.wonday.pdf.PdfView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EventDispatcher.this.dispatchEvent(topChangeEvent);
                }
            }, 10L);
        }
    }

    @Override // com.github.barteksc.pdfviewer.PDFView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if ((i <= 0 || i2 <= 0) && this.oldW <= 0 && this.oldH <= 0) {
            return;
        }
        super.onSizeChanged(i, i2, this.oldW, this.oldH);
        this.oldW = i;
        this.oldH = i2;
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener
    public void loadComplete(int i) {
        SizeF pageSize = getPageSize(0);
        float width = pageSize.getWidth();
        float height = pageSize.getHeight();
        zoomTo(this.scale);
        WritableMap createMap = Arguments.createMap();
        createMap.putString("message", "loadComplete|" + i + "|" + width + "|" + height + "|" + new Gson().toJson(getTableOfContents()));
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
        TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
        if (eventDispatcherForReactTag != null) {
            eventDispatcherForReactTag.dispatchEvent(topChangeEvent);
        }
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnErrorListener
    public void onError(Throwable th) {
        WritableMap createMap = Arguments.createMap();
        if (th.getMessage().contains("Password required or incorrect password")) {
            createMap.putString("message", "error|Password required or incorrect password.");
        } else {
            createMap.putString("message", "error|" + th.getMessage());
        }
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
        TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
        if (eventDispatcherForReactTag != null) {
            eventDispatcherForReactTag.dispatchEvent(topChangeEvent);
        }
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnPageScrollListener
    public void onPageScrolled(int i, float f) {
        Constants.Pinch.MINIMUM_ZOOM = this.minScale;
        Constants.Pinch.MAXIMUM_ZOOM = this.maxScale;
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnTapListener
    public boolean onTap(MotionEvent motionEvent) {
        WritableMap createMap = Arguments.createMap();
        createMap.putString("message", "pageSingleTap|" + this.page + "|" + motionEvent.getX() + "|" + motionEvent.getY());
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
        TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
        if (eventDispatcherForReactTag == null) {
            return true;
        }
        eventDispatcherForReactTag.dispatchEvent(topChangeEvent);
        return true;
    }

    @Override // com.github.barteksc.pdfviewer.listener.OnDrawListener
    public void onLayerDrawn(Canvas canvas, float f, float f2, int i) {
        if (this.originalWidth == 0.0f) {
            this.originalWidth = f;
        }
        float f3 = this.lastPageWidth;
        if (f3 > 0.0f) {
            float f4 = this.lastPageHeight;
            if (f4 > 0.0f && (f != f3 || f2 != f4)) {
                Constants.Pinch.MINIMUM_ZOOM = this.minScale;
                Constants.Pinch.MAXIMUM_ZOOM = this.maxScale;
                WritableMap createMap = Arguments.createMap();
                createMap.putString("message", "scaleChanged|" + (f / this.originalWidth));
                EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
                TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
                if (eventDispatcherForReactTag != null) {
                    eventDispatcherForReactTag.dispatchEvent(topChangeEvent);
                }
            }
        }
        this.lastPageWidth = f;
        this.lastPageHeight = f2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isRecycled()) {
            drawPdf();
        }
    }

    public void drawPdf() {
        PDFView.Configurator fromUri;
        showLog(String.format("drawPdf path:%s %s", this.path, Integer.valueOf(this.page)));
        File file = new File(this.path);
        if (file.exists()) {
            try {
                int pageCount = new PdfRenderer(ParcelFileDescriptor.open(file, 268435456)).getPageCount();
                this.totalPages = pageCount;
                int[] iArr = new int[pageCount];
                if (this.enableRTL) {
                    if (this.page > 0) {
                        this.page = this.bookmarks - 1;
                    } else {
                        this.page = pageCount;
                    }
                    for (int i = pageCount - 1; i >= 0; i--) {
                        iArr[i] = (this.totalPages - 1) - i;
                    }
                    this.pagesArrays = iArr;
                } else {
                    this.pagesArrays = null;
                    this.page = this.bookmarks - 1;
                }
            } catch (IOException e) {
                SentryLogcatAdapter.e("error", "error read PDF", e);
            }
        }
        if (this.path != null) {
            setMinZoom(this.minScale);
            setMaxZoom(this.maxScale);
            setMidZoom((this.maxScale + this.minScale) / 2.0f);
            Constants.Pinch.MINIMUM_ZOOM = this.minScale;
            Constants.Pinch.MAXIMUM_ZOOM = this.maxScale;
            if (this.path.startsWith(ReactNativeBlobUtilConst.FILE_PREFIX_CONTENT)) {
                try {
                    fromUri = fromStream(getContext().getContentResolver().openInputStream(Uri.parse(this.path)));
                } catch (FileNotFoundException e2) {
                    throw new RuntimeException(e2.getMessage());
                }
            } else {
                fromUri = fromUri(getURI(this.path));
            }
            fromUri.pages(this.pagesArrays).defaultPage(this.page).swipeHorizontal(this.horizontal).onPageChange(this).onLoad(this).onError(this).onDraw(this).onPageScroll(this).spacing(this.spacing).password(this.password).enableAntialiasing(this.enableAntialiasing).pageFitPolicy(this.fitPolicy).pageSnap(this.pageSnap).autoSpacing(this.autoSpacing).pageFling(this.pageFling).enableSwipe(!this.singlePage && this.scrollEnabled).enableDoubletap(!this.singlePage && this.enableDoubleTapZoom).enableAnnotationRendering(this.enableAnnotationRendering).linkHandler(this);
            if (this.singlePage) {
                fromUri.pages(this.page - 1);
                setTouchesEnabled(false);
            } else {
                fromUri.onTap(this);
            }
            fromUri.load();
        }
    }

    public void setEnableDoubleTapZoom(boolean z) {
        this.enableDoubleTapZoom = z;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPage(int i) {
        this.page = i;
        this.bookmarks = i;
    }

    public void setEnableRTL(boolean z) {
        this.enableRTL = z;
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public void setMinScale(float f) {
        this.minScale = f;
    }

    public void setMaxScale(float f) {
        this.maxScale = f;
    }

    public void setHorizontal(boolean z) {
        this.horizontal = z;
    }

    public void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
    }

    public void setSpacing(int i) {
        this.spacing = i;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setEnableAntialiasing(boolean z) {
        this.enableAntialiasing = z;
    }

    public void setEnableAnnotationRendering(boolean z) {
        this.enableAnnotationRendering = z;
    }

    public void setEnablePaging(boolean z) {
        this.enablePaging = z;
        if (z) {
            this.autoSpacing = true;
            this.pageFling = true;
            this.pageSnap = true;
        } else {
            this.autoSpacing = false;
            this.pageFling = false;
            this.pageSnap = false;
        }
    }

    public void setFitPolicy(int i) {
        if (i == 0) {
            this.fitPolicy = FitPolicy.WIDTH;
        } else if (i == 1) {
            this.fitPolicy = FitPolicy.HEIGHT;
        } else {
            this.fitPolicy = FitPolicy.BOTH;
        }
    }

    public void setSinglePage(boolean z) {
        this.singlePage = z;
    }

    @Override // com.github.barteksc.pdfviewer.link.LinkHandler
    public void handleLinkEvent(LinkTapEvent linkTapEvent) {
        String uri = linkTapEvent.getLink().getUri();
        Integer destPageIdx = linkTapEvent.getLink().getDestPageIdx();
        if (uri != null && !uri.isEmpty()) {
            handleUri(uri);
        } else if (destPageIdx != null) {
            handlePage(destPageIdx.intValue());
        }
    }

    private void handleUri(String str) {
        WritableMap createMap = Arguments.createMap();
        createMap.putString("message", "linkPressed|" + str);
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
        TopChangeEvent topChangeEvent = new TopChangeEvent(UIManagerHelper.getSurfaceId(this), getId(), createMap);
        if (eventDispatcherForReactTag != null) {
            eventDispatcherForReactTag.dispatchEvent(topChangeEvent);
        }
    }

    private void handlePage(int i) {
        jumpTo(i);
    }

    private void showLog(String str) {
        Log.d("PdfView", str);
    }

    private Uri getURI(String str) {
        Uri parse = Uri.parse(str);
        return (parse.getScheme() == null || parse.getScheme().isEmpty()) ? Uri.fromFile(new File(str)) : parse;
    }

    private void setTouchesEnabled(boolean z) {
        setTouchesEnabled(this, z);
    }

    private static void setTouchesEnabled(View view, boolean z) {
        if (z) {
            view.setOnTouchListener(null);
        } else {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: org.wonday.pdf.PdfView.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return true;
                }
            });
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setTouchesEnabled(viewGroup.getChildAt(i), z);
            }
        }
    }
}
