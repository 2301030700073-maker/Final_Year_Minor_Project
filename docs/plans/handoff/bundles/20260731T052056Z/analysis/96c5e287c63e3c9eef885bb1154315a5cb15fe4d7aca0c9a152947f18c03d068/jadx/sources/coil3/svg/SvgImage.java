package coil3.svg;

import android.graphics.Canvas;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import coil3.Image;
import coil3.svg.internal.AndroidSvg;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SvgImage implements Image {
    public final int height;
    public final AndroidSvg renderOptions;
    public final SVG svg;
    public final int width;

    public SvgImage(SVG svg, AndroidSvg androidSvg, int i, int i2) {
        this.svg = svg;
        this.renderOptions = androidSvg;
        this.width = i;
        this.height = i2;
    }

    @Override // coil3.Image
    public final void draw(Canvas canvas) {
        SVG svg = this.svg;
        svg.getClass();
        Headers.Builder builder = (Headers.Builder) svg.cssRules;
        AndroidSvg androidSvg = this.renderOptions;
        if (androidSvg == null) {
            androidSvg = new AndroidSvg(24);
        }
        if (((SVG.Box) androidSvg.renderOptions) == null) {
            androidSvg.renderOptions = new SVG.Box(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, canvas.getWidth(), canvas.getHeight());
        }
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer();
        sVGAndroidRenderer.canvas = canvas;
        sVGAndroidRenderer.document = svg;
        SVG.Svg svg2 = (SVG.Svg) svg.rootElement;
        if (svg2 == null) {
            Log.w("SVGAndroidRenderer", "Nothing to render. Document is empty.");
            return;
        }
        SVG.Box box = svg2.viewBox;
        PreserveAspectRatio preserveAspectRatio = svg2.preserveAspectRatio;
        Headers.Builder builder2 = (Headers.Builder) androidSvg.svg;
        if (builder2 != null) {
            ArrayList arrayList = builder2.namesAndValues;
            if ((arrayList != null ? arrayList.size() : 0) > 0) {
                builder.addAll((Headers.Builder) androidSvg.svg);
            }
        }
        sVGAndroidRenderer.state = new SVGAndroidRenderer.RendererState();
        sVGAndroidRenderer.stateStack = new Stack();
        sVGAndroidRenderer.updateStyle((SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state, SVG.Style.getDefaultStyle());
        SVGAndroidRenderer.RendererState rendererState = (SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state;
        rendererState.viewPort = null;
        rendererState.spacePreserve = false;
        ((Stack) sVGAndroidRenderer.stateStack).push(new SVGAndroidRenderer.RendererState(rendererState));
        sVGAndroidRenderer.matrixStack = new Stack();
        sVGAndroidRenderer.parentStack = new Stack();
        Boolean bool = svg2.spacePreserve;
        if (bool != null) {
            ((SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state).spacePreserve = bool.booleanValue();
        }
        sVGAndroidRenderer.statePush();
        SVG.Box box2 = new SVG.Box((SVG.Box) androidSvg.renderOptions);
        SVG.Length length = svg2.width;
        if (length != null) {
            box2.width = length.floatValue(sVGAndroidRenderer, box2.width);
        }
        SVG.Length length2 = svg2.height;
        if (length2 != null) {
            box2.height = length2.floatValue(sVGAndroidRenderer, box2.height);
        }
        sVGAndroidRenderer.render(svg2, box2, box, preserveAspectRatio);
        sVGAndroidRenderer.statePop();
        Headers.Builder builder3 = (Headers.Builder) androidSvg.svg;
        if (builder3 != null) {
            ArrayList arrayList2 = builder3.namesAndValues;
            if ((arrayList2 != null ? arrayList2.size() : 0) > 0) {
                CSSParser.Source source = CSSParser.Source.RenderOptions;
                ArrayList arrayList3 = builder.namesAndValues;
                if (arrayList3 == null) {
                    return;
                }
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    if (((CSSParser.Rule) it.next()).source == source) {
                        it.remove();
                    }
                }
            }
        }
    }

    @Override // coil3.Image
    public final int getHeight() {
        return this.height;
    }

    @Override // coil3.Image
    public final boolean getShareable() {
        return true;
    }

    @Override // coil3.Image
    public final long getSize() {
        return 2048L;
    }

    @Override // coil3.Image
    public final int getWidth() {
        return this.width;
    }
}
