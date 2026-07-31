package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.util.Log;
import android.util.Xml;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import okhttp3.Headers;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SVGParser {
    public SVG.SvgContainer currentElement;
    public int ignoreDepth;
    public boolean ignoring;
    public boolean inMetadataElement;
    public boolean inStyleElement;
    public StringBuilder metadataElementContents;
    public SVGElem metadataTag;
    public StringBuilder styleElementContents;
    public SVG svgDocument;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.caverock.androidsvg.SVGParser$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr;
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem;

        static {
            int[] iArr = new int[SVGAttr.values().length];
            $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr = iArr;
            try {
                iArr[SVGAttr.x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.width.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.height.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.version.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.href.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.preserveAspectRatio.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.d.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.pathLength.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.rx.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.ry.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.cx.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.cy.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.r.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.x1.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.y1.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.x2.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.y2.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.dx.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.dy.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.requiredFeatures.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.requiredExtensions.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.systemLanguage.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.requiredFormats.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.requiredFonts.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.refX.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.refY.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.markerWidth.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.markerHeight.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.markerUnits.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.orient.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.gradientUnits.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.gradientTransform.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.spreadMethod.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fx.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fy.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.offset.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.clipPathUnits.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.startOffset.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.patternUnits.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.patternContentUnits.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.patternTransform.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.maskUnits.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.maskContentUnits.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.style.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.CLASS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fill.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fill_rule.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fill_opacity.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_opacity.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_width.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_linecap.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_linejoin.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_miterlimit.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_dasharray.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stroke_dashoffset.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.opacity.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.color.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.font.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.font_family.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.font_size.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.font_weight.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.font_style.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.text_decoration.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.direction.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.text_anchor.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.overflow.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.marker.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.marker_start.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.marker_mid.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.marker_end.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.display.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.visibility.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stop_color.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.stop_opacity.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.clip.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.clip_path.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.clip_rule.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.mask.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.solid_color.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.solid_opacity.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.viewport_fill.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.viewport_fill_opacity.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.vector_effect.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.image_rendering.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.viewBox.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.type.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.media.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            int[] iArr2 = new int[SVGElem.values().length];
            $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem = iArr2;
            try {
                iArr2[SVGElem.svg.ordinal()] = 1;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.g.ordinal()] = 2;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.a.ordinal()] = 3;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.defs.ordinal()] = 4;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.use.ordinal()] = 5;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.path.ordinal()] = 6;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.rect.ordinal()] = 7;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.circle.ordinal()] = 8;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.ellipse.ordinal()] = 9;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.line.ordinal()] = 10;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.polyline.ordinal()] = 11;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.polygon.ordinal()] = 12;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.text.ordinal()] = 13;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.tspan.ordinal()] = 14;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.tref.ordinal()] = 15;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.SWITCH.ordinal()] = 16;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.symbol.ordinal()] = 17;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.marker.ordinal()] = 18;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.linearGradient.ordinal()] = 19;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.radialGradient.ordinal()] = 20;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.stop.ordinal()] = 21;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.title.ordinal()] = 22;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.desc.ordinal()] = 23;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.clipPath.ordinal()] = 24;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.textPath.ordinal()] = 25;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.pattern.ordinal()] = 26;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.image.ordinal()] = 27;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.view.ordinal()] = 28;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.mask.ordinal()] = 29;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.style.ordinal()] = 30;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.solidColor.ordinal()] = 31;
            } catch (NoSuchFieldError unused120) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class AspectRatioKeywords {
        public static final HashMap aspectRatioKeywords;

        static {
            HashMap hashMap = new HashMap(10);
            aspectRatioKeywords = hashMap;
            hashMap.put("none", PreserveAspectRatio.Alignment.none);
            hashMap.put("xMinYMin", PreserveAspectRatio.Alignment.xMinYMin);
            hashMap.put("xMidYMin", PreserveAspectRatio.Alignment.xMidYMin);
            hashMap.put("xMaxYMin", PreserveAspectRatio.Alignment.xMaxYMin);
            hashMap.put("xMinYMid", PreserveAspectRatio.Alignment.xMinYMid);
            hashMap.put("xMidYMid", PreserveAspectRatio.Alignment.xMidYMid);
            hashMap.put("xMaxYMid", PreserveAspectRatio.Alignment.xMaxYMid);
            hashMap.put("xMinYMax", PreserveAspectRatio.Alignment.xMinYMax);
            hashMap.put("xMidYMax", PreserveAspectRatio.Alignment.xMidYMax);
            hashMap.put("xMaxYMax", PreserveAspectRatio.Alignment.xMaxYMax);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ColourKeywords {
        public static final HashMap colourKeywords;

        static {
            HashMap hashMap = new HashMap(47);
            colourKeywords = hashMap;
            ViewSizeResolver$CC.m(-984833, hashMap, "aliceblue", -332841, "antiquewhite");
            hashMap.put("aqua", -16711681);
            hashMap.put("aquamarine", -8388652);
            ViewSizeResolver$CC.m(-983041, hashMap, "azure", -657956, "beige");
            ViewSizeResolver$CC.m(-6972, hashMap, "bisque", -16777216, "black");
            ViewSizeResolver$CC.m(-5171, hashMap, "blanchedalmond", -16776961, "blue");
            ViewSizeResolver$CC.m(-7722014, hashMap, "blueviolet", -5952982, "brown");
            ViewSizeResolver$CC.m(-2180985, hashMap, "burlywood", -10510688, "cadetblue");
            ViewSizeResolver$CC.m(-8388864, hashMap, "chartreuse", -2987746, "chocolate");
            ViewSizeResolver$CC.m(-32944, hashMap, "coral", -10185235, "cornflowerblue");
            ViewSizeResolver$CC.m(-1828, hashMap, "cornsilk", -2354116, "crimson");
            hashMap.put("cyan", -16711681);
            hashMap.put("darkblue", -16777077);
            ViewSizeResolver$CC.m(-16741493, hashMap, "darkcyan", -4684277, "darkgoldenrod");
            hashMap.put("darkgray", -5658199);
            hashMap.put("darkgreen", -16751616);
            hashMap.put("darkgrey", -5658199);
            hashMap.put("darkkhaki", -4343957);
            ViewSizeResolver$CC.m(-7667573, hashMap, "darkmagenta", -11179217, "darkolivegreen");
            ViewSizeResolver$CC.m(-29696, hashMap, "darkorange", -6737204, "darkorchid");
            ViewSizeResolver$CC.m(-7667712, hashMap, "darkred", -1468806, "darksalmon");
            ViewSizeResolver$CC.m(-7357297, hashMap, "darkseagreen", -12042869, "darkslateblue");
            hashMap.put("darkslategray", -13676721);
            hashMap.put("darkslategrey", -13676721);
            hashMap.put("darkturquoise", -16724271);
            hashMap.put("darkviolet", -7077677);
            ViewSizeResolver$CC.m(-60269, hashMap, "deeppink", -16728065, "deepskyblue");
            hashMap.put("dimgray", -9868951);
            hashMap.put("dimgrey", -9868951);
            hashMap.put("dodgerblue", -14774017);
            hashMap.put("firebrick", -5103070);
            ViewSizeResolver$CC.m(-1296, hashMap, "floralwhite", -14513374, "forestgreen");
            hashMap.put("fuchsia", -65281);
            hashMap.put("gainsboro", -2302756);
            ViewSizeResolver$CC.m(-460545, hashMap, "ghostwhite", -10496, "gold");
            hashMap.put("goldenrod", -2448096);
            hashMap.put("gray", -8355712);
            ViewSizeResolver$CC.m(-16744448, hashMap, "green", -5374161, "greenyellow");
            hashMap.put("grey", -8355712);
            hashMap.put("honeydew", -983056);
            ViewSizeResolver$CC.m(-38476, hashMap, "hotpink", -3318692, "indianred");
            ViewSizeResolver$CC.m(-11861886, hashMap, "indigo", -16, "ivory");
            ViewSizeResolver$CC.m(-989556, hashMap, "khaki", -1644806, "lavender");
            ViewSizeResolver$CC.m(-3851, hashMap, "lavenderblush", -8586240, "lawngreen");
            ViewSizeResolver$CC.m(-1331, hashMap, "lemonchiffon", -5383962, "lightblue");
            ViewSizeResolver$CC.m(-1015680, hashMap, "lightcoral", -2031617, "lightcyan");
            hashMap.put("lightgoldenrodyellow", -329006);
            hashMap.put("lightgray", -2894893);
            hashMap.put("lightgreen", -7278960);
            hashMap.put("lightgrey", -2894893);
            ViewSizeResolver$CC.m(-18751, hashMap, "lightpink", -24454, "lightsalmon");
            ViewSizeResolver$CC.m(-14634326, hashMap, "lightseagreen", -7876870, "lightskyblue");
            hashMap.put("lightslategray", -8943463);
            hashMap.put("lightslategrey", -8943463);
            hashMap.put("lightsteelblue", -5192482);
            hashMap.put("lightyellow", -32);
            ViewSizeResolver$CC.m(-16711936, hashMap, "lime", -13447886, "limegreen");
            hashMap.put("linen", -331546);
            hashMap.put("magenta", -65281);
            ViewSizeResolver$CC.m(-8388608, hashMap, "maroon", -10039894, "mediumaquamarine");
            ViewSizeResolver$CC.m(-16777011, hashMap, "mediumblue", -4565549, "mediumorchid");
            ViewSizeResolver$CC.m(-7114533, hashMap, "mediumpurple", -12799119, "mediumseagreen");
            ViewSizeResolver$CC.m(-8689426, hashMap, "mediumslateblue", -16713062, "mediumspringgreen");
            ViewSizeResolver$CC.m(-12004916, hashMap, "mediumturquoise", -3730043, "mediumvioletred");
            ViewSizeResolver$CC.m(-15132304, hashMap, "midnightblue", -655366, "mintcream");
            ViewSizeResolver$CC.m(-6943, hashMap, "mistyrose", -6987, "moccasin");
            ViewSizeResolver$CC.m(-8531, hashMap, "navajowhite", -16777088, "navy");
            ViewSizeResolver$CC.m(-133658, hashMap, "oldlace", -8355840, "olive");
            ViewSizeResolver$CC.m(-9728477, hashMap, "olivedrab", -23296, "orange");
            ViewSizeResolver$CC.m(-47872, hashMap, "orangered", -2461482, "orchid");
            ViewSizeResolver$CC.m(-1120086, hashMap, "palegoldenrod", -6751336, "palegreen");
            ViewSizeResolver$CC.m(-5247250, hashMap, "paleturquoise", -2396013, "palevioletred");
            ViewSizeResolver$CC.m(-4139, hashMap, "papayawhip", -9543, "peachpuff");
            ViewSizeResolver$CC.m(-3308225, hashMap, "peru", -16181, "pink");
            ViewSizeResolver$CC.m(-2252579, hashMap, "plum", -5185306, "powderblue");
            ViewSizeResolver$CC.m(-8388480, hashMap, "purple", -10079335, "rebeccapurple");
            ViewSizeResolver$CC.m(-65536, hashMap, "red", -4419697, "rosybrown");
            ViewSizeResolver$CC.m(-12490271, hashMap, "royalblue", -7650029, "saddlebrown");
            ViewSizeResolver$CC.m(-360334, hashMap, "salmon", -744352, "sandybrown");
            ViewSizeResolver$CC.m(-13726889, hashMap, "seagreen", -2578, "seashell");
            ViewSizeResolver$CC.m(-6270419, hashMap, "sienna", -4144960, "silver");
            ViewSizeResolver$CC.m(-7876885, hashMap, "skyblue", -9807155, "slateblue");
            hashMap.put("slategray", -9404272);
            hashMap.put("slategrey", -9404272);
            hashMap.put("snow", -1286);
            hashMap.put("springgreen", -16711809);
            ViewSizeResolver$CC.m(-12156236, hashMap, "steelblue", -2968436, "tan");
            ViewSizeResolver$CC.m(-16744320, hashMap, "teal", -2572328, "thistle");
            ViewSizeResolver$CC.m(-40121, hashMap, "tomato", -12525360, "turquoise");
            ViewSizeResolver$CC.m(-1146130, hashMap, "violet", -663885, "wheat");
            ViewSizeResolver$CC.m(-1, hashMap, "white", -657931, "whitesmoke");
            ViewSizeResolver$CC.m(-256, hashMap, "yellow", -6632142, "yellowgreen");
            hashMap.put("transparent", 0);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class FontSizeKeywords {
        public static final HashMap fontSizeKeywords;

        static {
            HashMap hashMap = new HashMap(9);
            fontSizeKeywords = hashMap;
            SVG.Unit unit = SVG.Unit.pt;
            hashMap.put("xx-small", new SVG.Length(0.694f, unit));
            hashMap.put("x-small", new SVG.Length(0.833f, unit));
            hashMap.put("small", new SVG.Length(10.0f, unit));
            hashMap.put("medium", new SVG.Length(12.0f, unit));
            hashMap.put("large", new SVG.Length(14.4f, unit));
            hashMap.put("x-large", new SVG.Length(17.3f, unit));
            hashMap.put("xx-large", new SVG.Length(20.7f, unit));
            SVG.Unit unit2 = SVG.Unit.percent;
            hashMap.put("smaller", new SVG.Length(83.33f, unit2));
            hashMap.put("larger", new SVG.Length(120.0f, unit2));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class FontWeightKeywords {
        public static final HashMap fontWeightKeywords;

        static {
            HashMap hashMap = new HashMap(13);
            fontWeightKeywords = hashMap;
            hashMap.put("normal", 400);
            hashMap.put("bold", 700);
            ViewSizeResolver$CC.m(1, hashMap, "bolder", -1, "lighter");
            ViewSizeResolver$CC.m(100, hashMap, "100", 200, "200");
            hashMap.put("300", 300);
            hashMap.put("400", 400);
            ViewSizeResolver$CC.m(500, hashMap, "500", 600, "600");
            hashMap.put("700", 700);
            hashMap.put("800", 800);
            hashMap.put("900", 900);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SVGAttr {
        private static final /* synthetic */ SVGAttr[] $VALUES;
        public static final SVGAttr CLASS;
        public static final SVGAttr UNSUPPORTED;
        private static final Map<String, SVGAttr> cache;
        public static final SVGAttr clip;
        public static final SVGAttr clipPathUnits;
        public static final SVGAttr clip_path;
        public static final SVGAttr clip_rule;
        public static final SVGAttr color;
        public static final SVGAttr cx;
        public static final SVGAttr cy;
        public static final SVGAttr d;
        public static final SVGAttr direction;
        public static final SVGAttr display;
        public static final SVGAttr dx;
        public static final SVGAttr dy;
        public static final SVGAttr fill;
        public static final SVGAttr fill_opacity;
        public static final SVGAttr fill_rule;
        public static final SVGAttr font;
        public static final SVGAttr font_family;
        public static final SVGAttr font_size;
        public static final SVGAttr font_style;
        public static final SVGAttr font_weight;
        public static final SVGAttr fx;
        public static final SVGAttr fy;
        public static final SVGAttr gradientTransform;
        public static final SVGAttr gradientUnits;
        public static final SVGAttr height;
        public static final SVGAttr href;
        public static final SVGAttr image_rendering;
        public static final SVGAttr marker;
        public static final SVGAttr markerHeight;
        public static final SVGAttr markerUnits;
        public static final SVGAttr markerWidth;
        public static final SVGAttr marker_end;
        public static final SVGAttr marker_mid;
        public static final SVGAttr marker_start;
        public static final SVGAttr mask;
        public static final SVGAttr maskContentUnits;
        public static final SVGAttr maskUnits;
        public static final SVGAttr media;
        public static final SVGAttr offset;
        public static final SVGAttr opacity;
        public static final SVGAttr orient;
        public static final SVGAttr overflow;
        public static final SVGAttr pathLength;
        public static final SVGAttr patternContentUnits;
        public static final SVGAttr patternTransform;
        public static final SVGAttr patternUnits;
        public static final SVGAttr points;
        public static final SVGAttr preserveAspectRatio;
        public static final SVGAttr r;
        public static final SVGAttr refX;
        public static final SVGAttr refY;
        public static final SVGAttr requiredExtensions;
        public static final SVGAttr requiredFeatures;
        public static final SVGAttr requiredFonts;
        public static final SVGAttr requiredFormats;
        public static final SVGAttr rx;
        public static final SVGAttr ry;
        public static final SVGAttr solid_color;
        public static final SVGAttr solid_opacity;
        public static final SVGAttr spreadMethod;
        public static final SVGAttr startOffset;
        public static final SVGAttr stop_color;
        public static final SVGAttr stop_opacity;
        public static final SVGAttr stroke;
        public static final SVGAttr stroke_dasharray;
        public static final SVGAttr stroke_dashoffset;
        public static final SVGAttr stroke_linecap;
        public static final SVGAttr stroke_linejoin;
        public static final SVGAttr stroke_miterlimit;
        public static final SVGAttr stroke_opacity;
        public static final SVGAttr stroke_width;
        public static final SVGAttr style;
        public static final SVGAttr systemLanguage;
        public static final SVGAttr text_anchor;
        public static final SVGAttr text_decoration;
        public static final SVGAttr transform;
        public static final SVGAttr type;
        public static final SVGAttr vector_effect;
        public static final SVGAttr version;
        public static final SVGAttr viewBox;
        public static final SVGAttr viewport_fill;
        public static final SVGAttr viewport_fill_opacity;
        public static final SVGAttr visibility;
        public static final SVGAttr width;
        public static final SVGAttr x;
        public static final SVGAttr x1;
        public static final SVGAttr x2;
        public static final SVGAttr y;
        public static final SVGAttr y1;
        public static final SVGAttr y2;

        static {
            SVGAttr sVGAttr = new SVGAttr("CLASS", 0);
            CLASS = sVGAttr;
            SVGAttr sVGAttr2 = new SVGAttr("clip", 1);
            clip = sVGAttr2;
            SVGAttr sVGAttr3 = new SVGAttr("clip_path", 2);
            clip_path = sVGAttr3;
            SVGAttr sVGAttr4 = new SVGAttr("clipPathUnits", 3);
            clipPathUnits = sVGAttr4;
            SVGAttr sVGAttr5 = new SVGAttr("clip_rule", 4);
            clip_rule = sVGAttr5;
            SVGAttr sVGAttr6 = new SVGAttr("color", 5);
            color = sVGAttr6;
            SVGAttr sVGAttr7 = new SVGAttr("cx", 6);
            cx = sVGAttr7;
            SVGAttr sVGAttr8 = new SVGAttr("cy", 7);
            cy = sVGAttr8;
            SVGAttr sVGAttr9 = new SVGAttr("direction", 8);
            direction = sVGAttr9;
            SVGAttr sVGAttr10 = new SVGAttr("dx", 9);
            dx = sVGAttr10;
            SVGAttr sVGAttr11 = new SVGAttr("dy", 10);
            dy = sVGAttr11;
            SVGAttr sVGAttr12 = new SVGAttr("fx", 11);
            fx = sVGAttr12;
            SVGAttr sVGAttr13 = new SVGAttr("fy", 12);
            fy = sVGAttr13;
            SVGAttr sVGAttr14 = new SVGAttr("d", 13);
            d = sVGAttr14;
            SVGAttr sVGAttr15 = new SVGAttr("display", 14);
            display = sVGAttr15;
            SVGAttr sVGAttr16 = new SVGAttr("fill", 15);
            fill = sVGAttr16;
            SVGAttr sVGAttr17 = new SVGAttr("fill_rule", 16);
            fill_rule = sVGAttr17;
            SVGAttr sVGAttr18 = new SVGAttr("fill_opacity", 17);
            fill_opacity = sVGAttr18;
            SVGAttr sVGAttr19 = new SVGAttr("font", 18);
            font = sVGAttr19;
            SVGAttr sVGAttr20 = new SVGAttr("font_family", 19);
            font_family = sVGAttr20;
            SVGAttr sVGAttr21 = new SVGAttr("font_size", 20);
            font_size = sVGAttr21;
            SVGAttr sVGAttr22 = new SVGAttr("font_weight", 21);
            font_weight = sVGAttr22;
            SVGAttr sVGAttr23 = new SVGAttr("font_style", 22);
            font_style = sVGAttr23;
            SVGAttr sVGAttr24 = new SVGAttr("gradientTransform", 23);
            gradientTransform = sVGAttr24;
            SVGAttr sVGAttr25 = new SVGAttr("gradientUnits", 24);
            gradientUnits = sVGAttr25;
            SVGAttr sVGAttr26 = new SVGAttr("height", 25);
            height = sVGAttr26;
            SVGAttr sVGAttr27 = new SVGAttr("href", 26);
            href = sVGAttr27;
            SVGAttr sVGAttr28 = new SVGAttr("image_rendering", 27);
            image_rendering = sVGAttr28;
            SVGAttr sVGAttr29 = new SVGAttr("marker", 28);
            marker = sVGAttr29;
            SVGAttr sVGAttr30 = new SVGAttr("marker_start", 29);
            marker_start = sVGAttr30;
            SVGAttr sVGAttr31 = new SVGAttr("marker_mid", 30);
            marker_mid = sVGAttr31;
            SVGAttr sVGAttr32 = new SVGAttr("marker_end", 31);
            marker_end = sVGAttr32;
            SVGAttr sVGAttr33 = new SVGAttr("markerHeight", 32);
            markerHeight = sVGAttr33;
            SVGAttr sVGAttr34 = new SVGAttr("markerUnits", 33);
            markerUnits = sVGAttr34;
            SVGAttr sVGAttr35 = new SVGAttr("markerWidth", 34);
            markerWidth = sVGAttr35;
            SVGAttr sVGAttr36 = new SVGAttr("mask", 35);
            mask = sVGAttr36;
            SVGAttr sVGAttr37 = new SVGAttr("maskContentUnits", 36);
            maskContentUnits = sVGAttr37;
            SVGAttr sVGAttr38 = new SVGAttr("maskUnits", 37);
            maskUnits = sVGAttr38;
            SVGAttr sVGAttr39 = new SVGAttr("media", 38);
            media = sVGAttr39;
            SVGAttr sVGAttr40 = new SVGAttr("offset", 39);
            offset = sVGAttr40;
            SVGAttr sVGAttr41 = new SVGAttr("opacity", 40);
            opacity = sVGAttr41;
            SVGAttr sVGAttr42 = new SVGAttr("orient", 41);
            orient = sVGAttr42;
            SVGAttr sVGAttr43 = new SVGAttr("overflow", 42);
            overflow = sVGAttr43;
            SVGAttr sVGAttr44 = new SVGAttr("pathLength", 43);
            pathLength = sVGAttr44;
            SVGAttr sVGAttr45 = new SVGAttr("patternContentUnits", 44);
            patternContentUnits = sVGAttr45;
            SVGAttr sVGAttr46 = new SVGAttr("patternTransform", 45);
            patternTransform = sVGAttr46;
            SVGAttr sVGAttr47 = new SVGAttr("patternUnits", 46);
            patternUnits = sVGAttr47;
            SVGAttr sVGAttr48 = new SVGAttr("points", 47);
            points = sVGAttr48;
            SVGAttr sVGAttr49 = new SVGAttr("preserveAspectRatio", 48);
            preserveAspectRatio = sVGAttr49;
            SVGAttr sVGAttr50 = new SVGAttr("r", 49);
            r = sVGAttr50;
            SVGAttr sVGAttr51 = new SVGAttr("refX", 50);
            refX = sVGAttr51;
            SVGAttr sVGAttr52 = new SVGAttr("refY", 51);
            refY = sVGAttr52;
            SVGAttr sVGAttr53 = new SVGAttr("requiredFeatures", 52);
            requiredFeatures = sVGAttr53;
            SVGAttr sVGAttr54 = new SVGAttr("requiredExtensions", 53);
            requiredExtensions = sVGAttr54;
            SVGAttr sVGAttr55 = new SVGAttr("requiredFormats", 54);
            requiredFormats = sVGAttr55;
            SVGAttr sVGAttr56 = new SVGAttr("requiredFonts", 55);
            requiredFonts = sVGAttr56;
            SVGAttr sVGAttr57 = new SVGAttr("rx", 56);
            rx = sVGAttr57;
            SVGAttr sVGAttr58 = new SVGAttr("ry", 57);
            ry = sVGAttr58;
            SVGAttr sVGAttr59 = new SVGAttr("solid_color", 58);
            solid_color = sVGAttr59;
            SVGAttr sVGAttr60 = new SVGAttr("solid_opacity", 59);
            solid_opacity = sVGAttr60;
            SVGAttr sVGAttr61 = new SVGAttr("spreadMethod", 60);
            spreadMethod = sVGAttr61;
            SVGAttr sVGAttr62 = new SVGAttr("startOffset", 61);
            startOffset = sVGAttr62;
            SVGAttr sVGAttr63 = new SVGAttr("stop_color", 62);
            stop_color = sVGAttr63;
            SVGAttr sVGAttr64 = new SVGAttr("stop_opacity", 63);
            stop_opacity = sVGAttr64;
            SVGAttr sVGAttr65 = new SVGAttr("stroke", 64);
            stroke = sVGAttr65;
            SVGAttr sVGAttr66 = new SVGAttr("stroke_dasharray", 65);
            stroke_dasharray = sVGAttr66;
            SVGAttr sVGAttr67 = new SVGAttr("stroke_dashoffset", 66);
            stroke_dashoffset = sVGAttr67;
            SVGAttr sVGAttr68 = new SVGAttr("stroke_linecap", 67);
            stroke_linecap = sVGAttr68;
            SVGAttr sVGAttr69 = new SVGAttr("stroke_linejoin", 68);
            stroke_linejoin = sVGAttr69;
            SVGAttr sVGAttr70 = new SVGAttr("stroke_miterlimit", 69);
            stroke_miterlimit = sVGAttr70;
            SVGAttr sVGAttr71 = new SVGAttr("stroke_opacity", 70);
            stroke_opacity = sVGAttr71;
            SVGAttr sVGAttr72 = new SVGAttr("stroke_width", 71);
            stroke_width = sVGAttr72;
            SVGAttr sVGAttr73 = new SVGAttr("style", 72);
            style = sVGAttr73;
            SVGAttr sVGAttr74 = new SVGAttr("systemLanguage", 73);
            systemLanguage = sVGAttr74;
            SVGAttr sVGAttr75 = new SVGAttr("text_anchor", 74);
            text_anchor = sVGAttr75;
            SVGAttr sVGAttr76 = new SVGAttr("text_decoration", 75);
            text_decoration = sVGAttr76;
            SVGAttr sVGAttr77 = new SVGAttr("transform", 76);
            transform = sVGAttr77;
            SVGAttr sVGAttr78 = new SVGAttr("type", 77);
            type = sVGAttr78;
            SVGAttr sVGAttr79 = new SVGAttr("vector_effect", 78);
            vector_effect = sVGAttr79;
            SVGAttr sVGAttr80 = new SVGAttr("version", 79);
            version = sVGAttr80;
            SVGAttr sVGAttr81 = new SVGAttr("viewBox", 80);
            viewBox = sVGAttr81;
            SVGAttr sVGAttr82 = new SVGAttr("width", 81);
            width = sVGAttr82;
            SVGAttr sVGAttr83 = new SVGAttr("x", 82);
            x = sVGAttr83;
            SVGAttr sVGAttr84 = new SVGAttr("y", 83);
            y = sVGAttr84;
            SVGAttr sVGAttr85 = new SVGAttr("x1", 84);
            x1 = sVGAttr85;
            SVGAttr sVGAttr86 = new SVGAttr("y1", 85);
            y1 = sVGAttr86;
            SVGAttr sVGAttr87 = new SVGAttr("x2", 86);
            x2 = sVGAttr87;
            SVGAttr sVGAttr88 = new SVGAttr("y2", 87);
            y2 = sVGAttr88;
            SVGAttr sVGAttr89 = new SVGAttr("viewport_fill", 88);
            viewport_fill = sVGAttr89;
            SVGAttr sVGAttr90 = new SVGAttr("viewport_fill_opacity", 89);
            viewport_fill_opacity = sVGAttr90;
            SVGAttr sVGAttr91 = new SVGAttr("visibility", 90);
            visibility = sVGAttr91;
            SVGAttr sVGAttr92 = new SVGAttr("UNSUPPORTED", 91);
            UNSUPPORTED = sVGAttr92;
            $VALUES = new SVGAttr[]{sVGAttr, sVGAttr2, sVGAttr3, sVGAttr4, sVGAttr5, sVGAttr6, sVGAttr7, sVGAttr8, sVGAttr9, sVGAttr10, sVGAttr11, sVGAttr12, sVGAttr13, sVGAttr14, sVGAttr15, sVGAttr16, sVGAttr17, sVGAttr18, sVGAttr19, sVGAttr20, sVGAttr21, sVGAttr22, sVGAttr23, sVGAttr24, sVGAttr25, sVGAttr26, sVGAttr27, sVGAttr28, sVGAttr29, sVGAttr30, sVGAttr31, sVGAttr32, sVGAttr33, sVGAttr34, sVGAttr35, sVGAttr36, sVGAttr37, sVGAttr38, sVGAttr39, sVGAttr40, sVGAttr41, sVGAttr42, sVGAttr43, sVGAttr44, sVGAttr45, sVGAttr46, sVGAttr47, sVGAttr48, sVGAttr49, sVGAttr50, sVGAttr51, sVGAttr52, sVGAttr53, sVGAttr54, sVGAttr55, sVGAttr56, sVGAttr57, sVGAttr58, sVGAttr59, sVGAttr60, sVGAttr61, sVGAttr62, sVGAttr63, sVGAttr64, sVGAttr65, sVGAttr66, sVGAttr67, sVGAttr68, sVGAttr69, sVGAttr70, sVGAttr71, sVGAttr72, sVGAttr73, sVGAttr74, sVGAttr75, sVGAttr76, sVGAttr77, sVGAttr78, sVGAttr79, sVGAttr80, sVGAttr81, sVGAttr82, sVGAttr83, sVGAttr84, sVGAttr85, sVGAttr86, sVGAttr87, sVGAttr88, sVGAttr89, sVGAttr90, sVGAttr91, sVGAttr92};
            cache = new HashMap();
            for (SVGAttr sVGAttr93 : values()) {
                if (sVGAttr93 == CLASS) {
                    cache.put("class", sVGAttr93);
                } else if (sVGAttr93 != UNSUPPORTED) {
                    cache.put(sVGAttr93.name().replace('_', '-'), sVGAttr93);
                }
            }
        }

        public static SVGAttr fromString(String str) {
            SVGAttr sVGAttr = cache.get(str);
            return sVGAttr != null ? sVGAttr : UNSUPPORTED;
        }

        public static SVGAttr valueOf(String str) {
            return (SVGAttr) Enum.valueOf(SVGAttr.class, str);
        }

        public static SVGAttr[] values() {
            return (SVGAttr[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SVGElem {
        private static final /* synthetic */ SVGElem[] $VALUES;
        public static final SVGElem SWITCH;
        public static final SVGElem UNSUPPORTED;
        public static final SVGElem a;
        private static final Map<String, SVGElem> cache;
        public static final SVGElem circle;
        public static final SVGElem clipPath;
        public static final SVGElem defs;
        public static final SVGElem desc;
        public static final SVGElem ellipse;
        public static final SVGElem g;
        public static final SVGElem image;
        public static final SVGElem line;
        public static final SVGElem linearGradient;
        public static final SVGElem marker;
        public static final SVGElem mask;
        public static final SVGElem path;
        public static final SVGElem pattern;
        public static final SVGElem polygon;
        public static final SVGElem polyline;
        public static final SVGElem radialGradient;
        public static final SVGElem rect;
        public static final SVGElem solidColor;
        public static final SVGElem stop;
        public static final SVGElem style;
        public static final SVGElem svg;
        public static final SVGElem symbol;
        public static final SVGElem text;
        public static final SVGElem textPath;
        public static final SVGElem title;
        public static final SVGElem tref;
        public static final SVGElem tspan;
        public static final SVGElem use;
        public static final SVGElem view;

        static {
            SVGElem sVGElem = new SVGElem("svg", 0);
            svg = sVGElem;
            SVGElem sVGElem2 = new SVGElem("a", 1);
            a = sVGElem2;
            SVGElem sVGElem3 = new SVGElem("circle", 2);
            circle = sVGElem3;
            SVGElem sVGElem4 = new SVGElem("clipPath", 3);
            clipPath = sVGElem4;
            SVGElem sVGElem5 = new SVGElem("defs", 4);
            defs = sVGElem5;
            SVGElem sVGElem6 = new SVGElem("desc", 5);
            desc = sVGElem6;
            SVGElem sVGElem7 = new SVGElem("ellipse", 6);
            ellipse = sVGElem7;
            SVGElem sVGElem8 = new SVGElem("g", 7);
            g = sVGElem8;
            SVGElem sVGElem9 = new SVGElem("image", 8);
            image = sVGElem9;
            SVGElem sVGElem10 = new SVGElem("line", 9);
            line = sVGElem10;
            SVGElem sVGElem11 = new SVGElem("linearGradient", 10);
            linearGradient = sVGElem11;
            SVGElem sVGElem12 = new SVGElem("marker", 11);
            marker = sVGElem12;
            SVGElem sVGElem13 = new SVGElem("mask", 12);
            mask = sVGElem13;
            SVGElem sVGElem14 = new SVGElem("path", 13);
            path = sVGElem14;
            SVGElem sVGElem15 = new SVGElem("pattern", 14);
            pattern = sVGElem15;
            SVGElem sVGElem16 = new SVGElem("polygon", 15);
            polygon = sVGElem16;
            SVGElem sVGElem17 = new SVGElem("polyline", 16);
            polyline = sVGElem17;
            SVGElem sVGElem18 = new SVGElem("radialGradient", 17);
            radialGradient = sVGElem18;
            SVGElem sVGElem19 = new SVGElem("rect", 18);
            rect = sVGElem19;
            SVGElem sVGElem20 = new SVGElem("solidColor", 19);
            solidColor = sVGElem20;
            SVGElem sVGElem21 = new SVGElem("stop", 20);
            stop = sVGElem21;
            SVGElem sVGElem22 = new SVGElem("style", 21);
            style = sVGElem22;
            SVGElem sVGElem23 = new SVGElem("SWITCH", 22);
            SWITCH = sVGElem23;
            SVGElem sVGElem24 = new SVGElem("symbol", 23);
            symbol = sVGElem24;
            SVGElem sVGElem25 = new SVGElem("text", 24);
            text = sVGElem25;
            SVGElem sVGElem26 = new SVGElem("textPath", 25);
            textPath = sVGElem26;
            SVGElem sVGElem27 = new SVGElem("title", 26);
            title = sVGElem27;
            SVGElem sVGElem28 = new SVGElem("tref", 27);
            tref = sVGElem28;
            SVGElem sVGElem29 = new SVGElem("tspan", 28);
            tspan = sVGElem29;
            SVGElem sVGElem30 = new SVGElem("use", 29);
            use = sVGElem30;
            SVGElem sVGElem31 = new SVGElem("view", 30);
            view = sVGElem31;
            SVGElem sVGElem32 = new SVGElem("UNSUPPORTED", 31);
            UNSUPPORTED = sVGElem32;
            $VALUES = new SVGElem[]{sVGElem, sVGElem2, sVGElem3, sVGElem4, sVGElem5, sVGElem6, sVGElem7, sVGElem8, sVGElem9, sVGElem10, sVGElem11, sVGElem12, sVGElem13, sVGElem14, sVGElem15, sVGElem16, sVGElem17, sVGElem18, sVGElem19, sVGElem20, sVGElem21, sVGElem22, sVGElem23, sVGElem24, sVGElem25, sVGElem26, sVGElem27, sVGElem28, sVGElem29, sVGElem30, sVGElem31, sVGElem32};
            cache = new HashMap();
            for (SVGElem sVGElem33 : values()) {
                if (sVGElem33 == SWITCH) {
                    cache.put("switch", sVGElem33);
                } else if (sVGElem33 != UNSUPPORTED) {
                    cache.put(sVGElem33.name(), sVGElem33);
                }
            }
        }

        public static SVGElem fromString(String str) {
            SVGElem sVGElem = cache.get(str);
            return sVGElem != null ? sVGElem : UNSUPPORTED;
        }

        public static SVGElem valueOf(String str) {
            return (SVGElem) Enum.valueOf(SVGElem.class, str);
        }

        public static SVGElem[] values() {
            return (SVGElem[]) $VALUES.clone();
        }
    }

    public static int clamp255(float f) {
        if (f < RecyclerView.DECELERATION_RATE) {
            return 0;
        }
        if (f > 255.0f) {
            return 255;
        }
        return Math.round(f);
    }

    public static int hslToRgb(float f, float f2, float f3) {
        float f4 = RecyclerView.DECELERATION_RATE;
        float f5 = f % 360.0f;
        if (f < RecyclerView.DECELERATION_RATE) {
            f5 += 360.0f;
        }
        float f6 = f5 / 60.0f;
        float f7 = f2 / 100.0f;
        float f8 = f3 / 100.0f;
        if (f7 < RecyclerView.DECELERATION_RATE) {
            f7 = 0.0f;
        } else if (f7 > 1.0f) {
            f7 = 1.0f;
        }
        if (f8 >= RecyclerView.DECELERATION_RATE) {
            f4 = f8 > 1.0f ? 1.0f : f8;
        }
        float f9 = f4 <= 0.5f ? (f7 + 1.0f) * f4 : (f4 + f7) - (f7 * f4);
        float f10 = (f4 * 2.0f) - f9;
        return clamp255(hueToRgb(f10, f9, f6 - 2.0f) * 256.0f) | (clamp255(hueToRgb(f10, f9, f6 + 2.0f) * 256.0f) << 16) | (clamp255(hueToRgb(f10, f9, f6) * 256.0f) << 8);
    }

    public static float hueToRgb(float f, float f2, float f3) {
        if (f3 < RecyclerView.DECELERATION_RATE) {
            f3 += 6.0f;
        }
        if (f3 >= 6.0f) {
            f3 -= 6.0f;
        }
        return f3 < 1.0f ? Animation.CC.m(f2, f, f3, f) : f3 < 3.0f ? f2 : f3 < 4.0f ? Animation.CC.m(4.0f, f3, f2 - f, f) : f;
    }

    public static void parseAttributesConditional(SVG.SvgConditional svgConditional, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[ViewSizeResolver$CC.m(attributes, i)]) {
                case RADIO_COLUMN_VALUE:
                    SVG.PathDefinition pathDefinition = new SVG.PathDefinition(trim);
                    HashSet hashSet = new HashSet();
                    while (!pathDefinition.empty()) {
                        String nextToken = pathDefinition.nextToken();
                        if (nextToken.startsWith("http://www.w3.org/TR/SVG11/feature#")) {
                            hashSet.add(nextToken.substring(35));
                        } else {
                            hashSet.add("UNSUPPORTED");
                        }
                        pathDefinition.skipWhitespace();
                    }
                    svgConditional.setRequiredFeatures(hashSet);
                    break;
                case SIZE_BOX_VALUE:
                    svgConditional.setRequiredExtensions(trim);
                    break;
                case 23:
                    SVG.PathDefinition pathDefinition2 = new SVG.PathDefinition(trim);
                    HashSet hashSet2 = new HashSet();
                    while (!pathDefinition2.empty()) {
                        String nextToken2 = pathDefinition2.nextToken();
                        int indexOf = nextToken2.indexOf(45);
                        if (indexOf != -1) {
                            nextToken2 = nextToken2.substring(0, indexOf);
                        }
                        hashSet2.add(new Locale(nextToken2, "", "").getLanguage());
                        pathDefinition2.skipWhitespace();
                    }
                    svgConditional.setSystemLanguage(hashSet2);
                    break;
                case 24:
                    SVG.PathDefinition pathDefinition3 = new SVG.PathDefinition(trim);
                    HashSet hashSet3 = new HashSet();
                    while (!pathDefinition3.empty()) {
                        hashSet3.add(pathDefinition3.nextToken());
                        pathDefinition3.skipWhitespace();
                    }
                    svgConditional.setRequiredFormats(hashSet3);
                    break;
                case 25:
                    ArrayList parseFontFamily = parseFontFamily(trim);
                    svgConditional.setRequiredFonts(parseFontFamily != null ? new HashSet(parseFontFamily) : new HashSet(0));
                    break;
            }
        }
    }

    public static void parseAttributesCore(SVG.SvgElementBase svgElementBase, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String qName = attributes.getQName(i);
            if (qName.equals("id") || qName.equals("xml:id")) {
                svgElementBase.id = attributes.getValue(i).trim();
                return;
            }
            if (qName.equals("xml:space")) {
                String trim = attributes.getValue(i).trim();
                if ("default".equals(trim)) {
                    svgElementBase.spacePreserve = Boolean.FALSE;
                    return;
                } else {
                    if (!"preserve".equals(trim)) {
                        throw new SVGParseException(Modifier.CC.m("Invalid value for \"xml:space\" attribute: ", trim));
                    }
                    svgElementBase.spacePreserve = Boolean.TRUE;
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseAttributesGradient(com.caverock.androidsvg.SVG.GradientElement r4, org.xml.sax.Attributes r5) {
        /*
            r0 = 0
        L1:
            int r1 = r5.getLength()
            if (r0 >= r1) goto L78
            java.lang.String r1 = r5.getValue(r0)
            java.lang.String r1 = r1.trim()
            int[] r2 = com.caverock.androidsvg.SVGParser.AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr
            int r3 = coil3.size.ViewSizeResolver$CC.m(r5, r0)
            r2 = r2[r3]
            r3 = 6
            if (r2 == r3) goto L5b
            switch(r2) {
                case 32: goto L3a;
                case 33: goto L33;
                case 34: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto L75
        L1e:
            com.caverock.androidsvg.SVG$GradientSpread r2 = com.caverock.androidsvg.SVG.GradientSpread.valueOf(r1)     // Catch: java.lang.IllegalArgumentException -> L25
            r4.spreadMethod = r2     // Catch: java.lang.IllegalArgumentException -> L25
            goto L75
        L25:
            com.caverock.androidsvg.SVGParseException r4 = new com.caverock.androidsvg.SVGParseException
            java.lang.String r5 = "Invalid spreadMethod attribute. \""
            java.lang.String r0 = "\" is not a valid value."
            java.lang.String r5 = androidx.compose.animation.core.Animation.CC.m(r5, r1, r0)
            r4.<init>(r5)
            throw r4
        L33:
            android.graphics.Matrix r1 = parseTransformList(r1)
            r4.gradientTransform = r1
            goto L75
        L3a:
            java.lang.String r2 = "objectBoundingBox"
            boolean r2 = r2.equals(r1)
            if (r2 == 0) goto L47
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r4.gradientUnitsAreUser = r1
            goto L75
        L47:
            java.lang.String r2 = "userSpaceOnUse"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L55
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r4.gradientUnitsAreUser = r1
            goto L75
        L55:
            java.lang.String r4 = "Invalid value for attribute gradientUnits"
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m(r4)
            return
        L5b:
            java.lang.String r2 = ""
            java.lang.String r3 = r5.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L73
            java.lang.String r2 = "http://www.w3.org/1999/xlink"
            java.lang.String r3 = r5.getURI(r0)
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L75
        L73:
            r4.href = r1
        L75:
            int r0 = r0 + 1
            goto L1
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.parseAttributesGradient(com.caverock.androidsvg.SVG$GradientElement, org.xml.sax.Attributes):void");
    }

    public static void parseAttributesPolyLine(SVG.PolyLine polyLine, Attributes attributes, String str) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.fromString(attributes.getLocalName(i)) == SVGAttr.points) {
                SVG.PathDefinition pathDefinition = new SVG.PathDefinition(attributes.getValue(i));
                ArrayList arrayList = new ArrayList();
                pathDefinition.skipWhitespace();
                while (!pathDefinition.empty()) {
                    float nextFloat = pathDefinition.nextFloat();
                    if (Float.isNaN(nextFloat)) {
                        throw new SVGParseException(Animation.CC.m("Invalid <", str, "> points attribute. Non-coordinate content found in list."));
                    }
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat2 = pathDefinition.nextFloat();
                    if (Float.isNaN(nextFloat2)) {
                        throw new SVGParseException(Animation.CC.m("Invalid <", str, "> points attribute. There should be an even number of coordinates."));
                    }
                    pathDefinition.skipCommaWhitespace();
                    arrayList.add(Float.valueOf(nextFloat));
                    arrayList.add(Float.valueOf(nextFloat2));
                }
                polyLine.points = new float[arrayList.size()];
                Iterator it = arrayList.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    polyLine.points[i2] = ((Float) it.next()).floatValue();
                    i2++;
                }
            }
        }
    }

    public static void parseAttributesStyle(SVG.SvgElementBase svgElementBase, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (trim.length() != 0) {
                int i2 = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[ViewSizeResolver$CC.m(attributes, i)];
                if (i2 == 45) {
                    SVG.PathDefinition pathDefinition = new SVG.PathDefinition(trim.replaceAll("/\\*.*?\\*/", ""));
                    while (true) {
                        String nextToken = pathDefinition.nextToken(':', false);
                        pathDefinition.skipWhitespace();
                        if (!pathDefinition.consume(':')) {
                            break;
                        }
                        pathDefinition.skipWhitespace();
                        String nextToken2 = pathDefinition.nextToken(';', true);
                        if (nextToken2 == null) {
                            break;
                        }
                        pathDefinition.skipWhitespace();
                        if (pathDefinition.empty() || pathDefinition.consume(';')) {
                            SVG.Style style = svgElementBase.style;
                            if (style == null) {
                                style = new SVG.Style();
                                svgElementBase.style = style;
                            }
                            processStyleProperty(style, nextToken, nextToken2);
                            pathDefinition.skipWhitespace();
                        }
                    }
                } else if (i2 != 46) {
                    SVG.Style style2 = svgElementBase.baseStyle;
                    if (style2 == null) {
                        style2 = new SVG.Style();
                        svgElementBase.baseStyle = style2;
                    }
                    processStyleProperty(style2, attributes.getLocalName(i), attributes.getValue(i).trim());
                } else {
                    CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(trim);
                    ArrayList arrayList = null;
                    while (!cSSTextScanner.empty()) {
                        String nextToken3 = cSSTextScanner.nextToken();
                        if (nextToken3 != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(nextToken3);
                            cSSTextScanner.skipWhitespace();
                        }
                    }
                    svgElementBase.classNames = arrayList;
                }
            }
        }
    }

    public static void parseAttributesTextPosition(SVG.TextPositionedContainer textPositionedContainer, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[ViewSizeResolver$CC.m(attributes, i)];
            if (i2 == 1) {
                textPositionedContainer.x = parseLengthList(trim);
            } else if (i2 == 2) {
                textPositionedContainer.y = parseLengthList(trim);
            } else if (i2 == 19) {
                textPositionedContainer.dx = parseLengthList(trim);
            } else if (i2 == 20) {
                textPositionedContainer.dy = parseLengthList(trim);
            }
        }
    }

    public static void parseAttributesTransform(SVG.HasTransform hasTransform, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.fromString(attributes.getLocalName(i)) == SVGAttr.transform) {
                hasTransform.setTransform(parseTransformList(attributes.getValue(i)));
            }
        }
    }

    public static void parseAttributesViewBox(SVG.SvgViewBoxContainer svgViewBoxContainer, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int i2 = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[ViewSizeResolver$CC.m(attributes, i)];
            if (i2 == 7) {
                parsePreserveAspectRatio(svgViewBoxContainer, trim);
            } else if (i2 != 87) {
                continue;
            } else {
                SVG.PathDefinition pathDefinition = new SVG.PathDefinition(trim);
                pathDefinition.skipWhitespace();
                float nextFloat = pathDefinition.nextFloat();
                pathDefinition.skipCommaWhitespace();
                float nextFloat2 = pathDefinition.nextFloat();
                pathDefinition.skipCommaWhitespace();
                float nextFloat3 = pathDefinition.nextFloat();
                pathDefinition.skipCommaWhitespace();
                float nextFloat4 = pathDefinition.nextFloat();
                if (Float.isNaN(nextFloat) || Float.isNaN(nextFloat2) || Float.isNaN(nextFloat3) || Float.isNaN(nextFloat4)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid viewBox definition - should have four numbers");
                    return;
                } else if (nextFloat3 < RecyclerView.DECELERATION_RATE) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid viewBox. width cannot be negative");
                    return;
                } else {
                    if (nextFloat4 < RecyclerView.DECELERATION_RATE) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid viewBox. height cannot be negative");
                        return;
                    }
                    svgViewBoxContainer.viewBox = new SVG.Box(nextFloat, nextFloat2, nextFloat3, nextFloat4);
                }
            }
        }
    }

    public static SVG.Colour parseColour(String str) {
        long j;
        int i;
        if (str.charAt(0) == '#') {
            int length = str.length();
            IntegerParser integerParser = null;
            if (1 < length) {
                long j2 = 0;
                int i2 = 1;
                while (i2 < length) {
                    char charAt = str.charAt(i2);
                    if (charAt < '0' || charAt > '9') {
                        if (charAt >= 'A' && charAt <= 'F') {
                            j = j2 * 16;
                            i = charAt - 'A';
                        } else {
                            if (charAt < 'a' || charAt > 'f') {
                                break;
                            }
                            j = j2 * 16;
                            i = charAt - 'a';
                        }
                        j2 = j + i + 10;
                    } else {
                        j2 = (j2 * 16) + (charAt - '0');
                    }
                    if (j2 > 4294967295L) {
                        break;
                    }
                    i2++;
                }
                if (i2 != 1) {
                    integerParser = new IntegerParser(j2, i2);
                }
            }
            if (integerParser == null) {
                throw new SVGParseException("Bad hex colour value: ".concat(str));
            }
            long j3 = integerParser.value;
            int i3 = integerParser.pos;
            if (i3 == 4) {
                int i4 = (int) j3;
                int i5 = i4 & 3840;
                int i6 = i4 & 240;
                int i7 = i4 & 15;
                return new SVG.Colour(i7 | (i5 << 8) | (-16777216) | (i5 << 12) | (i6 << 8) | (i6 << 4) | (i7 << 4));
            }
            if (i3 != 5) {
                if (i3 == 7) {
                    return new SVG.Colour(((int) j3) | (-16777216));
                }
                if (i3 != 9) {
                    throw new SVGParseException("Bad hex colour value: ".concat(str));
                }
                int i8 = (int) j3;
                return new SVG.Colour((i8 >>> 8) | (i8 << 24));
            }
            int i9 = (int) j3;
            int i10 = 61440 & i9;
            int i11 = i9 & 3840;
            int i12 = i9 & 240;
            int i13 = i9 & 15;
            return new SVG.Colour((i13 << 24) | (i13 << 28) | (i10 << 8) | (i10 << 4) | (i11 << 4) | i11 | i12 | (i12 >> 4));
        }
        String lowerCase = str.toLowerCase(Locale.US);
        boolean startsWith = lowerCase.startsWith("rgba(");
        if (startsWith || lowerCase.startsWith("rgb(")) {
            SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str.substring(startsWith ? 5 : 4));
            pathDefinition.skipWhitespace();
            float nextFloat = pathDefinition.nextFloat();
            if (!Float.isNaN(nextFloat) && pathDefinition.consume('%')) {
                nextFloat = (nextFloat * 256.0f) / 100.0f;
            }
            float checkedNextFloat = pathDefinition.checkedNextFloat(nextFloat);
            if (!Float.isNaN(checkedNextFloat) && pathDefinition.consume('%')) {
                checkedNextFloat = (checkedNextFloat * 256.0f) / 100.0f;
            }
            float checkedNextFloat2 = pathDefinition.checkedNextFloat(checkedNextFloat);
            if (!Float.isNaN(checkedNextFloat2) && pathDefinition.consume('%')) {
                checkedNextFloat2 = (checkedNextFloat2 * 256.0f) / 100.0f;
            }
            if (!startsWith) {
                pathDefinition.skipWhitespace();
                if (Float.isNaN(checkedNextFloat2) || !pathDefinition.consume(')')) {
                    throw new SVGParseException("Bad rgb() colour value: ".concat(str));
                }
                return new SVG.Colour((clamp255(nextFloat) << 16) | (-16777216) | (clamp255(checkedNextFloat) << 8) | clamp255(checkedNextFloat2));
            }
            float checkedNextFloat3 = pathDefinition.checkedNextFloat(checkedNextFloat2);
            pathDefinition.skipWhitespace();
            if (Float.isNaN(checkedNextFloat3) || !pathDefinition.consume(')')) {
                throw new SVGParseException("Bad rgba() colour value: ".concat(str));
            }
            return new SVG.Colour((clamp255(checkedNextFloat3 * 256.0f) << 24) | (clamp255(nextFloat) << 16) | (clamp255(checkedNextFloat) << 8) | clamp255(checkedNextFloat2));
        }
        boolean startsWith2 = lowerCase.startsWith("hsla(");
        if (!startsWith2 && !lowerCase.startsWith("hsl(")) {
            Integer num = (Integer) ColourKeywords.colourKeywords.get(lowerCase);
            if (num != null) {
                return new SVG.Colour(num.intValue());
            }
            throw new SVGParseException("Invalid colour keyword: ".concat(lowerCase));
        }
        SVG.PathDefinition pathDefinition2 = new SVG.PathDefinition(str.substring(startsWith2 ? 5 : 4));
        pathDefinition2.skipWhitespace();
        float nextFloat2 = pathDefinition2.nextFloat();
        float checkedNextFloat4 = pathDefinition2.checkedNextFloat(nextFloat2);
        if (!Float.isNaN(checkedNextFloat4)) {
            pathDefinition2.consume('%');
        }
        float checkedNextFloat5 = pathDefinition2.checkedNextFloat(checkedNextFloat4);
        if (!Float.isNaN(checkedNextFloat5)) {
            pathDefinition2.consume('%');
        }
        if (!startsWith2) {
            pathDefinition2.skipWhitespace();
            if (Float.isNaN(checkedNextFloat5) || !pathDefinition2.consume(')')) {
                throw new SVGParseException("Bad hsl() colour value: ".concat(str));
            }
            return new SVG.Colour(hslToRgb(nextFloat2, checkedNextFloat4, checkedNextFloat5) | (-16777216));
        }
        float checkedNextFloat6 = pathDefinition2.checkedNextFloat(checkedNextFloat5);
        pathDefinition2.skipWhitespace();
        if (Float.isNaN(checkedNextFloat6) || !pathDefinition2.consume(')')) {
            throw new SVGParseException("Bad hsla() colour value: ".concat(str));
        }
        return new SVG.Colour((clamp255(checkedNextFloat6 * 256.0f) << 24) | hslToRgb(nextFloat2, checkedNextFloat4, checkedNextFloat5));
    }

    public static float parseFloat(int i, String str) {
        float parseNumber = new NumberParser().parseNumber(0, i, str);
        if (Float.isNaN(parseNumber)) {
            throw new SVGParseException(Modifier.CC.m("Invalid float value: ", str));
        }
        return parseNumber;
    }

    public static ArrayList parseFontFamily(String str) {
        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str);
        ArrayList arrayList = null;
        do {
            String nextQuotedString = pathDefinition.nextQuotedString();
            if (nextQuotedString == null) {
                nextQuotedString = pathDefinition.nextToken(',', true);
            }
            if (nextQuotedString == null) {
                return arrayList;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(nextQuotedString);
            pathDefinition.skipCommaWhitespace();
        } while (!pathDefinition.empty());
        return arrayList;
    }

    public static String parseFunctionalIRI(String str) {
        if (!str.equals("none") && str.startsWith("url(")) {
            return str.endsWith(")") ? str.substring(4, str.length() - 1).trim() : str.substring(4).trim();
        }
        return null;
    }

    public static SVG.Length parseLength(String str) {
        if (str.length() == 0) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid length value (empty string)");
            return null;
        }
        int length = str.length();
        SVG.Unit unit = SVG.Unit.px;
        char charAt = str.charAt(length - 1);
        if (charAt == '%') {
            length--;
            unit = SVG.Unit.percent;
        } else if (length > 2 && Character.isLetter(charAt) && Character.isLetter(str.charAt(length - 2))) {
            length -= 2;
            try {
                unit = SVG.Unit.valueOf(str.substring(length).toLowerCase(Locale.US));
            } catch (IllegalArgumentException unused) {
                throw new SVGParseException("Invalid length unit specifier: ".concat(str));
            }
        }
        try {
            return new SVG.Length(parseFloat(length, str), unit);
        } catch (NumberFormatException e) {
            throw new SVGParseException("Invalid length value: ".concat(str), e);
        }
    }

    public static ArrayList parseLengthList(String str) {
        if (str.length() == 0) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid length list (empty string)");
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str);
        pathDefinition.skipWhitespace();
        while (!pathDefinition.empty()) {
            float nextFloat = pathDefinition.nextFloat();
            if (Float.isNaN(nextFloat)) {
                StringBuilder sb = new StringBuilder("Invalid length list value: ");
                String str2 = (String) pathDefinition.commands;
                int i = pathDefinition.commandsLength;
                while (!pathDefinition.empty() && !SVG.PathDefinition.isWhitespace(str2.charAt(pathDefinition.commandsLength))) {
                    pathDefinition.commandsLength++;
                }
                String substring = str2.substring(i, pathDefinition.commandsLength);
                pathDefinition.commandsLength = i;
                sb.append(substring);
                throw new SVGParseException(sb.toString());
            }
            SVG.Unit nextUnit = pathDefinition.nextUnit();
            if (nextUnit == null) {
                nextUnit = SVG.Unit.px;
            }
            arrayList.add(new SVG.Length(nextFloat, nextUnit));
            pathDefinition.skipCommaWhitespace();
        }
        return arrayList;
    }

    public static SVG.Length parseLengthOrAuto(SVG.PathDefinition pathDefinition) {
        return pathDefinition.consume("auto") ? new SVG.Length(RecyclerView.DECELERATION_RATE) : pathDefinition.nextLength();
    }

    public static Float parseOpacity(String str) {
        try {
            float parseFloat = parseFloat(str);
            float f = RecyclerView.DECELERATION_RATE;
            if (parseFloat >= RecyclerView.DECELERATION_RATE) {
                f = 1.0f;
                if (parseFloat > 1.0f) {
                }
                return Float.valueOf(parseFloat);
            }
            parseFloat = f;
            return Float.valueOf(parseFloat);
        } catch (SVGParseException unused) {
            return null;
        }
    }

    public static SVG.SvgPaint parsePaintSpecifier(String str) {
        boolean startsWith = str.startsWith("url(");
        SVG.SvgPaint svgPaint = SVG.Colour.TRANSPARENT;
        SVG.SvgPaint svgPaint2 = SVG.CurrentColor.instance;
        SVG.SvgPaint svgPaint3 = null;
        if (!startsWith) {
            if (str.equals("none")) {
                return svgPaint;
            }
            if (str.equals("currentColor")) {
                return svgPaint2;
            }
            try {
                return parseColour(str);
            } catch (SVGParseException unused) {
                return null;
            }
        }
        int indexOf = str.indexOf(")");
        if (indexOf == -1) {
            return new SVG.PaintReference(str.substring(4).trim(), null);
        }
        String trim = str.substring(4, indexOf).trim();
        String trim2 = str.substring(indexOf + 1).trim();
        if (trim2.length() > 0) {
            if (!trim2.equals("none")) {
                if (trim2.equals("currentColor")) {
                    svgPaint = svgPaint2;
                } else {
                    try {
                        svgPaint = parseColour(trim2);
                    } catch (SVGParseException unused2) {
                        svgPaint = null;
                    }
                }
            }
            svgPaint3 = svgPaint;
        }
        return new SVG.PaintReference(trim, svgPaint3);
    }

    public static void parsePreserveAspectRatio(SVG.SvgPreserveAspectRatioContainer svgPreserveAspectRatioContainer, String str) {
        PreserveAspectRatio.Scale scale;
        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str);
        pathDefinition.skipWhitespace();
        String nextToken = pathDefinition.nextToken();
        if ("defer".equals(nextToken)) {
            pathDefinition.skipWhitespace();
            nextToken = pathDefinition.nextToken();
        }
        PreserveAspectRatio.Alignment alignment = (PreserveAspectRatio.Alignment) AspectRatioKeywords.aspectRatioKeywords.get(nextToken);
        pathDefinition.skipWhitespace();
        if (pathDefinition.empty()) {
            scale = null;
        } else {
            String nextToken2 = pathDefinition.nextToken();
            nextToken2.getClass();
            if (nextToken2.equals("meet")) {
                scale = PreserveAspectRatio.Scale.meet;
            } else {
                if (!nextToken2.equals("slice")) {
                    throw new SVGParseException("Invalid preserveAspectRatio definition: ".concat(str));
                }
                scale = PreserveAspectRatio.Scale.slice;
            }
        }
        svgPreserveAspectRatioContainer.preserveAspectRatio = new PreserveAspectRatio(alignment, scale);
    }

    public static HashMap parseProcessingInstructionAttributes(SVG.PathDefinition pathDefinition) {
        HashMap hashMap = new HashMap();
        pathDefinition.skipWhitespace();
        String nextToken = pathDefinition.nextToken('=', false);
        while (nextToken != null) {
            pathDefinition.consume('=');
            hashMap.put(nextToken, pathDefinition.nextQuotedString());
            pathDefinition.skipWhitespace();
            nextToken = pathDefinition.nextToken('=', false);
        }
        return hashMap;
    }

    public static Matrix parseTransformList(String str) {
        Matrix matrix = new Matrix();
        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str);
        pathDefinition.skipWhitespace();
        while (!pathDefinition.empty()) {
            String str2 = (String) pathDefinition.commands;
            String str3 = null;
            if (!pathDefinition.empty()) {
                int i = pathDefinition.commandsLength;
                int charAt = str2.charAt(i);
                while (true) {
                    if ((charAt >= 97 && charAt <= 122) || (charAt >= 65 && charAt <= 90)) {
                        charAt = pathDefinition.advanceChar();
                    }
                }
                int i2 = pathDefinition.commandsLength;
                while (SVG.PathDefinition.isWhitespace(charAt)) {
                    charAt = pathDefinition.advanceChar();
                }
                if (charAt == 40) {
                    pathDefinition.commandsLength++;
                    str3 = str2.substring(i, i2);
                } else {
                    pathDefinition.commandsLength = i;
                }
            }
            if (str3 == null) {
                throw new SVGParseException("Bad transform function encountered in transform list: ".concat(str));
            }
            switch (str3) {
                case "matrix":
                    pathDefinition.skipWhitespace();
                    float nextFloat = pathDefinition.nextFloat();
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat2 = pathDefinition.nextFloat();
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat3 = pathDefinition.nextFloat();
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat4 = pathDefinition.nextFloat();
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat5 = pathDefinition.nextFloat();
                    pathDefinition.skipCommaWhitespace();
                    float nextFloat6 = pathDefinition.nextFloat();
                    pathDefinition.skipWhitespace();
                    if (!Float.isNaN(nextFloat6) && pathDefinition.consume(')')) {
                        Matrix matrix2 = new Matrix();
                        matrix2.setValues(new float[]{nextFloat, nextFloat3, nextFloat5, nextFloat2, nextFloat4, nextFloat6, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 1.0f});
                        matrix.preConcat(matrix2);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    break;
                case "rotate":
                    pathDefinition.skipWhitespace();
                    float nextFloat7 = pathDefinition.nextFloat();
                    float possibleNextFloat = pathDefinition.possibleNextFloat();
                    float possibleNextFloat2 = pathDefinition.possibleNextFloat();
                    pathDefinition.skipWhitespace();
                    if (Float.isNaN(nextFloat7) || !pathDefinition.consume(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    if (Float.isNaN(possibleNextFloat)) {
                        matrix.preRotate(nextFloat7);
                        break;
                    } else if (!Float.isNaN(possibleNextFloat2)) {
                        matrix.preRotate(nextFloat7, possibleNextFloat, possibleNextFloat2);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                case "scale":
                    pathDefinition.skipWhitespace();
                    float nextFloat8 = pathDefinition.nextFloat();
                    float possibleNextFloat3 = pathDefinition.possibleNextFloat();
                    pathDefinition.skipWhitespace();
                    if (!Float.isNaN(nextFloat8) && pathDefinition.consume(')')) {
                        if (!Float.isNaN(possibleNextFloat3)) {
                            matrix.preScale(nextFloat8, possibleNextFloat3);
                            break;
                        } else {
                            matrix.preScale(nextFloat8, nextFloat8);
                            break;
                        }
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    break;
                case "skewX":
                    pathDefinition.skipWhitespace();
                    float nextFloat9 = pathDefinition.nextFloat();
                    pathDefinition.skipWhitespace();
                    if (!Float.isNaN(nextFloat9) && pathDefinition.consume(')')) {
                        matrix.preSkew((float) Math.tan(Math.toRadians(nextFloat9)), RecyclerView.DECELERATION_RATE);
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    break;
                case "skewY":
                    pathDefinition.skipWhitespace();
                    float nextFloat10 = pathDefinition.nextFloat();
                    pathDefinition.skipWhitespace();
                    if (!Float.isNaN(nextFloat10) && pathDefinition.consume(')')) {
                        matrix.preSkew(RecyclerView.DECELERATION_RATE, (float) Math.tan(Math.toRadians(nextFloat10)));
                        break;
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    break;
                case "translate":
                    pathDefinition.skipWhitespace();
                    float nextFloat11 = pathDefinition.nextFloat();
                    float possibleNextFloat4 = pathDefinition.possibleNextFloat();
                    pathDefinition.skipWhitespace();
                    if (!Float.isNaN(nextFloat11) && pathDefinition.consume(')')) {
                        if (!Float.isNaN(possibleNextFloat4)) {
                            matrix.preTranslate(nextFloat11, possibleNextFloat4);
                            break;
                        } else {
                            matrix.preTranslate(nextFloat11, RecyclerView.DECELERATION_RATE);
                            break;
                        }
                    } else {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    break;
                default:
                    throw new SVGParseException(Animation.CC.m("Invalid transform list fn: ", str3, ")"));
            }
            if (pathDefinition.empty()) {
                return matrix;
            }
            pathDefinition.skipCommaWhitespace();
        }
        return matrix;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void processStyleProperty(SVG.Style style, String str, String str2) {
        SVG.Length nextLength;
        SVG.Length length;
        if (str2.length() == 0 || str2.equals("inherit")) {
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr[SVGAttr.fromString(str).ordinal()];
        SVG.CurrentColor currentColor = SVG.CurrentColor.instance;
        SVG.Style.FillRule fillRule = null;
        SVG.Length length2 = null;
        SVG.Style.RenderQuality renderQuality = null;
        SVG.Style.VectorEffect vectorEffect = null;
        SVG.Style.FillRule fillRule2 = null;
        r2 = null;
        r2 = null;
        ImageLoader$Builder imageLoader$Builder = null;
        Boolean bool = null;
        SVG.Style.TextAnchor textAnchor = null;
        SVG.Style.TextDirection textDirection = null;
        SVG.Style.TextDecoration textDecoration = null;
        SVG.Style.FontStyle fontStyle = null;
        String str3 = null;
        r2 = null;
        r2 = null;
        r2 = null;
        r2 = null;
        r2 = null;
        SVG.Length[] lengthArr = null;
        SVG.Style.LineJoin lineJoin = null;
        SVG.Style.LineCap lineCap = null;
        try {
            switch (i) {
                case 47:
                    SVG.SvgPaint parsePaintSpecifier = parsePaintSpecifier(str2);
                    style.fill = parsePaintSpecifier;
                    if (parsePaintSpecifier != null) {
                        style.specifiedFlags |= 1;
                        break;
                    }
                    break;
                case 48:
                    if ("nonzero".equals(str2)) {
                        fillRule = SVG.Style.FillRule.NonZero;
                    } else if ("evenodd".equals(str2)) {
                        fillRule = SVG.Style.FillRule.EvenOdd;
                    }
                    style.fillRule = fillRule;
                    if (fillRule != null) {
                        style.specifiedFlags |= 2;
                        break;
                    }
                    break;
                case 49:
                    Float parseOpacity = parseOpacity(str2);
                    style.fillOpacity = parseOpacity;
                    if (parseOpacity != null) {
                        style.specifiedFlags |= 4;
                        break;
                    }
                    break;
                case 50:
                    SVG.SvgPaint parsePaintSpecifier2 = parsePaintSpecifier(str2);
                    style.stroke = parsePaintSpecifier2;
                    if (parsePaintSpecifier2 != null) {
                        style.specifiedFlags |= 8;
                        break;
                    }
                    break;
                case 51:
                    Float parseOpacity2 = parseOpacity(str2);
                    style.strokeOpacity = parseOpacity2;
                    if (parseOpacity2 != null) {
                        style.specifiedFlags |= 16;
                        break;
                    }
                    break;
                case 52:
                    style.strokeWidth = parseLength(str2);
                    style.specifiedFlags |= 32;
                    break;
                case 53:
                    if ("butt".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Butt;
                    } else if ("round".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Round;
                    } else if ("square".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Square;
                    }
                    style.strokeLineCap = lineCap;
                    if (lineCap != null) {
                        style.specifiedFlags |= 64;
                        break;
                    }
                    break;
                case 54:
                    if ("miter".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Miter;
                    } else if ("round".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Round;
                    } else if ("bevel".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Bevel;
                    }
                    style.strokeLineJoin = lineJoin;
                    if (lineJoin != null) {
                        style.specifiedFlags |= 128;
                        break;
                    }
                    break;
                case 55:
                    style.strokeMiterLimit = Float.valueOf(parseFloat(str2));
                    style.specifiedFlags |= 256;
                    break;
                case 56:
                    if (!"none".equals(str2)) {
                        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(str2);
                        pathDefinition.skipWhitespace();
                        if (!pathDefinition.empty() && (nextLength = pathDefinition.nextLength()) != null && !nextLength.isNegative()) {
                            float f = nextLength.value;
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(nextLength);
                            while (true) {
                                if (!pathDefinition.empty()) {
                                    pathDefinition.skipCommaWhitespace();
                                    SVG.Length nextLength2 = pathDefinition.nextLength();
                                    if (nextLength2 != null && !nextLength2.isNegative()) {
                                        arrayList.add(nextLength2);
                                        f += nextLength2.value;
                                    }
                                } else if (f != RecyclerView.DECELERATION_RATE) {
                                    lengthArr = (SVG.Length[]) arrayList.toArray(new SVG.Length[arrayList.size()]);
                                }
                            }
                        }
                        style.strokeDashArray = lengthArr;
                        if (lengthArr != null) {
                            style.specifiedFlags |= 512;
                            break;
                        }
                    } else {
                        style.strokeDashArray = null;
                        style.specifiedFlags |= 512;
                        break;
                    }
                    break;
                case 57:
                    style.strokeDashOffset = parseLength(str2);
                    style.specifiedFlags |= 1024;
                    break;
                case 58:
                    style.opacity = parseOpacity(str2);
                    style.specifiedFlags |= 2048;
                    break;
                case 59:
                    style.color = parseColour(str2);
                    style.specifiedFlags |= 4096;
                    break;
                case 60:
                    if ("|caption|icon|menu|message-box|small-caption|status-bar|".contains("|" + str2 + '|')) {
                        SVG.PathDefinition pathDefinition2 = new SVG.PathDefinition(str2);
                        Integer num = null;
                        SVG.Style.FontStyle fontStyle2 = null;
                        String str4 = null;
                        while (true) {
                            String nextToken = pathDefinition2.nextToken('/', false);
                            pathDefinition2.skipWhitespace();
                            if (nextToken != null) {
                                if (num == null || fontStyle2 == null) {
                                    if (!nextToken.equals("normal") && (num != null || (num = (Integer) FontWeightKeywords.fontWeightKeywords.get(nextToken)) == null)) {
                                        if (fontStyle2 == null) {
                                            switch (nextToken) {
                                                case "oblique":
                                                    fontStyle2 = SVG.Style.FontStyle.Oblique;
                                                    break;
                                                case "italic":
                                                    fontStyle2 = SVG.Style.FontStyle.Italic;
                                                    break;
                                                case "normal":
                                                    fontStyle2 = SVG.Style.FontStyle.Normal;
                                                    break;
                                                default:
                                                    fontStyle2 = null;
                                                    break;
                                            }
                                            if (fontStyle2 != null) {
                                                continue;
                                            }
                                        }
                                        if (str4 == null && nextToken.equals("small-caps")) {
                                            str4 = nextToken;
                                        }
                                    }
                                }
                                try {
                                    length = (SVG.Length) FontSizeKeywords.fontSizeKeywords.get(nextToken);
                                    if (length == null) {
                                        length = parseLength(nextToken);
                                    }
                                } catch (SVGParseException unused) {
                                    length = null;
                                }
                                if (pathDefinition2.consume('/')) {
                                    pathDefinition2.skipWhitespace();
                                    String nextToken2 = pathDefinition2.nextToken();
                                    if (nextToken2 != null) {
                                        parseLength(nextToken2);
                                    }
                                    pathDefinition2.skipWhitespace();
                                }
                                if (!pathDefinition2.empty()) {
                                    int i2 = pathDefinition2.commandsLength;
                                    pathDefinition2.commandsLength = pathDefinition2.coordsLength;
                                    str3 = ((String) pathDefinition2.commands).substring(i2);
                                }
                                style.fontFamily = parseFontFamily(str3);
                                style.fontSize = length;
                                style.fontWeight = Integer.valueOf(num == null ? 400 : num.intValue());
                                if (fontStyle2 == null) {
                                    fontStyle2 = SVG.Style.FontStyle.Normal;
                                }
                                style.fontStyle = fontStyle2;
                                style.specifiedFlags |= 122880;
                                break;
                            } else {
                                break;
                            }
                        }
                    }
                    break;
                case 61:
                    ArrayList parseFontFamily = parseFontFamily(str2);
                    style.fontFamily = parseFontFamily;
                    if (parseFontFamily != null) {
                        style.specifiedFlags |= 8192;
                        break;
                    }
                    break;
                case 62:
                    try {
                        SVG.Length length3 = (SVG.Length) FontSizeKeywords.fontSizeKeywords.get(str2);
                        length2 = length3 == null ? parseLength(str2) : length3;
                    } catch (SVGParseException unused2) {
                    }
                    style.fontSize = length2;
                    if (length2 != null) {
                        style.specifiedFlags |= 16384;
                        break;
                    }
                    break;
                case 63:
                    Integer num2 = (Integer) FontWeightKeywords.fontWeightKeywords.get(str2);
                    style.fontWeight = num2;
                    if (num2 != null) {
                        style.specifiedFlags |= 32768;
                        break;
                    }
                    break;
                case 64:
                    switch (str2) {
                        case "oblique":
                            fontStyle = SVG.Style.FontStyle.Oblique;
                            break;
                        case "italic":
                            fontStyle = SVG.Style.FontStyle.Italic;
                            break;
                        case "normal":
                            fontStyle = SVG.Style.FontStyle.Normal;
                            break;
                    }
                    style.fontStyle = fontStyle;
                    if (fontStyle != null) {
                        style.specifiedFlags |= 65536;
                        break;
                    }
                    break;
                case 65:
                    switch (str2) {
                        case "line-through":
                            textDecoration = SVG.Style.TextDecoration.LineThrough;
                            break;
                        case "underline":
                            textDecoration = SVG.Style.TextDecoration.Underline;
                            break;
                        case "none":
                            textDecoration = SVG.Style.TextDecoration.None;
                            break;
                        case "blink":
                            textDecoration = SVG.Style.TextDecoration.Blink;
                            break;
                        case "overline":
                            textDecoration = SVG.Style.TextDecoration.Overline;
                            break;
                    }
                    style.textDecoration = textDecoration;
                    if (textDecoration != null) {
                        style.specifiedFlags |= 131072;
                        break;
                    }
                    break;
                case 66:
                    if (str2.equals("ltr")) {
                        textDirection = SVG.Style.TextDirection.LTR;
                    } else if (str2.equals("rtl")) {
                        textDirection = SVG.Style.TextDirection.RTL;
                    }
                    style.direction = textDirection;
                    if (textDirection != null) {
                        style.specifiedFlags |= 68719476736L;
                        break;
                    }
                    break;
                case 67:
                    switch (str2) {
                        case "middle":
                            textAnchor = SVG.Style.TextAnchor.Middle;
                            break;
                        case "end":
                            textAnchor = SVG.Style.TextAnchor.End;
                            break;
                        case "start":
                            textAnchor = SVG.Style.TextAnchor.Start;
                            break;
                    }
                    style.textAnchor = textAnchor;
                    if (textAnchor != null) {
                        style.specifiedFlags |= 262144;
                        break;
                    }
                    break;
                case 68:
                    switch (str2) {
                        case "hidden":
                        case "scroll":
                            bool = Boolean.FALSE;
                            break;
                        case "auto":
                        case "visible":
                            bool = Boolean.TRUE;
                            break;
                    }
                    style.overflow = bool;
                    if (bool != null) {
                        style.specifiedFlags |= 524288;
                        break;
                    }
                    break;
                case 69:
                    String parseFunctionalIRI = parseFunctionalIRI(str2);
                    style.markerStart = parseFunctionalIRI;
                    style.markerMid = parseFunctionalIRI;
                    style.markerEnd = parseFunctionalIRI;
                    style.specifiedFlags |= 14680064;
                    break;
                case 70:
                    style.markerStart = parseFunctionalIRI(str2);
                    style.specifiedFlags |= 2097152;
                    break;
                case 71:
                    style.markerMid = parseFunctionalIRI(str2);
                    style.specifiedFlags |= 4194304;
                    break;
                case 72:
                    style.markerEnd = parseFunctionalIRI(str2);
                    style.specifiedFlags |= 8388608;
                    break;
                case 73:
                    if (str2.indexOf(124) < 0) {
                        if ("|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|".contains("|" + str2 + '|')) {
                            style.display = Boolean.valueOf(!str2.equals("none"));
                            style.specifiedFlags |= 16777216;
                            break;
                        }
                    }
                    break;
                case 74:
                    if (str2.indexOf(124) < 0) {
                        if ("|visible|hidden|collapse|".contains("|" + str2 + '|')) {
                            style.visibility = Boolean.valueOf(str2.equals("visible"));
                            style.specifiedFlags |= 33554432;
                            break;
                        }
                    }
                    break;
                case 75:
                    if (str2.equals("currentColor")) {
                        style.stopColor = currentColor;
                    } else {
                        try {
                            style.stopColor = parseColour(str2);
                        } catch (SVGParseException e) {
                            Log.w("SVGParser", e.getMessage());
                            return;
                        }
                    }
                    style.specifiedFlags |= 67108864;
                    break;
                case 76:
                    style.stopOpacity = parseOpacity(str2);
                    style.specifiedFlags |= 134217728;
                    break;
                case 77:
                    if (!"auto".equals(str2) && str2.startsWith("rect(")) {
                        SVG.PathDefinition pathDefinition3 = new SVG.PathDefinition(str2.substring(5));
                        pathDefinition3.skipWhitespace();
                        SVG.Length parseLengthOrAuto = parseLengthOrAuto(pathDefinition3);
                        pathDefinition3.skipCommaWhitespace();
                        SVG.Length parseLengthOrAuto2 = parseLengthOrAuto(pathDefinition3);
                        pathDefinition3.skipCommaWhitespace();
                        SVG.Length parseLengthOrAuto3 = parseLengthOrAuto(pathDefinition3);
                        pathDefinition3.skipCommaWhitespace();
                        SVG.Length parseLengthOrAuto4 = parseLengthOrAuto(pathDefinition3);
                        pathDefinition3.skipWhitespace();
                        if (pathDefinition3.consume(')') || pathDefinition3.empty()) {
                            imageLoader$Builder = new ImageLoader$Builder(20);
                            imageLoader$Builder.application = parseLengthOrAuto;
                            imageLoader$Builder.defaults = parseLengthOrAuto2;
                            imageLoader$Builder.componentRegistry = parseLengthOrAuto3;
                            imageLoader$Builder.extras = parseLengthOrAuto4;
                        }
                    }
                    style.clip = imageLoader$Builder;
                    if (imageLoader$Builder != null) {
                        style.specifiedFlags |= 1048576;
                        break;
                    }
                    break;
                case 78:
                    style.clipPath = parseFunctionalIRI(str2);
                    style.specifiedFlags |= 268435456;
                    break;
                case 79:
                    if ("nonzero".equals(str2)) {
                        fillRule2 = SVG.Style.FillRule.NonZero;
                    } else if ("evenodd".equals(str2)) {
                        fillRule2 = SVG.Style.FillRule.EvenOdd;
                    }
                    style.clipRule = fillRule2;
                    style.specifiedFlags |= 536870912;
                    break;
                case 80:
                    style.mask = parseFunctionalIRI(str2);
                    style.specifiedFlags |= 1073741824;
                    break;
                case 81:
                    if (str2.equals("currentColor")) {
                        style.solidColor = currentColor;
                    } else {
                        try {
                            style.solidColor = parseColour(str2);
                        } catch (SVGParseException e2) {
                            Log.w("SVGParser", e2.getMessage());
                            return;
                        }
                    }
                    style.specifiedFlags |= 2147483648L;
                    break;
                case 82:
                    style.solidOpacity = parseOpacity(str2);
                    style.specifiedFlags |= 4294967296L;
                    break;
                case 83:
                    if (str2.equals("currentColor")) {
                        style.viewportFill = currentColor;
                    } else {
                        try {
                            style.viewportFill = parseColour(str2);
                        } catch (SVGParseException e3) {
                            Log.w("SVGParser", e3.getMessage());
                            return;
                        }
                    }
                    style.specifiedFlags |= 8589934592L;
                    break;
                case 84:
                    style.viewportFillOpacity = parseOpacity(str2);
                    style.specifiedFlags |= 17179869184L;
                    break;
                case 85:
                    if (str2.equals("none")) {
                        vectorEffect = SVG.Style.VectorEffect.None;
                    } else if (str2.equals("non-scaling-stroke")) {
                        vectorEffect = SVG.Style.VectorEffect.NonScalingStroke;
                    }
                    style.vectorEffect = vectorEffect;
                    if (vectorEffect != null) {
                        style.specifiedFlags |= 34359738368L;
                        break;
                    }
                    break;
                case 86:
                    switch (str2) {
                        case "optimizeQuality":
                            renderQuality = SVG.Style.RenderQuality.optimizeQuality;
                            break;
                        case "auto":
                            renderQuality = SVG.Style.RenderQuality.auto;
                            break;
                        case "optimizeSpeed":
                            renderQuality = SVG.Style.RenderQuality.optimizeSpeed;
                            break;
                    }
                    style.imageRendering = renderQuality;
                    if (renderQuality != null) {
                        style.specifiedFlags |= 137438953472L;
                        break;
                    }
                    break;
            }
        } catch (SVGParseException unused3) {
        }
    }

    public final void appendToTextContainer(String str) {
        SVG.SvgConditionalContainer svgConditionalContainer = (SVG.SvgConditionalContainer) this.currentElement;
        int size = svgConditionalContainer.children.size();
        SVG.SvgObject svgObject = size == 0 ? null : (SVG.SvgObject) svgConditionalContainer.children.get(size - 1);
        if (svgObject instanceof SVG.TextSequence) {
            SVG.TextSequence textSequence = (SVG.TextSequence) svgObject;
            textSequence.text = Animation.CC.m(new StringBuilder(), textSequence.text, str);
        } else {
            SVG.SvgContainer svgContainer = this.currentElement;
            SVG.TextSequence textSequence2 = new SVG.TextSequence();
            textSequence2.text = str;
            svgContainer.addChild(textSequence2);
        }
    }

    public final void endElement(String str, String str2, String str3) {
        if (this.ignoring) {
            int i = this.ignoreDepth - 1;
            this.ignoreDepth = i;
            if (i == 0) {
                this.ignoring = false;
                return;
            }
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            if (str2.length() <= 0) {
                str2 = str3;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem[SVGElem.fromString(str2).ordinal()];
            if (i2 != 1 && i2 != 2 && i2 != 4 && i2 != 5 && i2 != 13 && i2 != 14) {
                switch (i2) {
                    case SIZE_BOX_VALUE:
                    case 23:
                        this.inMetadataElement = false;
                        if (this.metadataElementContents != null) {
                            SVGElem sVGElem = this.metadataTag;
                            if (sVGElem == SVGElem.title) {
                                this.svgDocument.getClass();
                            } else if (sVGElem == SVGElem.desc) {
                                this.svgDocument.getClass();
                            }
                            this.metadataElementContents.setLength(0);
                            break;
                        }
                        break;
                    case 30:
                        StringBuilder sb = this.styleElementContents;
                        if (sb != null) {
                            this.inStyleElement = false;
                            String sb2 = sb.toString();
                            CSSParser cSSParser = new CSSParser(CSSParser.MediaType.screen, CSSParser.Source.Document);
                            SVG svg = this.svgDocument;
                            CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(sb2);
                            cSSTextScanner.skipWhitespace();
                            ((Headers.Builder) svg.cssRules).addAll(cSSParser.parseRuleset(cSSTextScanner));
                            this.styleElementContents.setLength(0);
                            break;
                        }
                        break;
                }
                return;
            }
            this.currentElement = ((SVG.SvgObject) this.currentElement).parent;
        }
    }

    public final void parseUsingSAX(InputStream inputStream) {
        Log.d("SVGParser", "Falling back to SAX parser");
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            newInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            SAXHandler sAXHandler = new SAXHandler();
            xMLReader.setContentHandler(sAXHandler);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", sAXHandler);
            xMLReader.parse(new InputSource(inputStream));
        } catch (IOException e) {
            throw new SVGParseException("Stream error", e);
        } catch (ParserConfigurationException e2) {
            throw new SVGParseException("XML parser problem", e2);
        } catch (SAXException e3) {
            throw new SVGParseException("SVG parse error", e3);
        }
    }

    public final void parseUsingXmlPullParser(InputStream inputStream) {
        try {
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                XPPAttributesWrapper xPPAttributesWrapper = new XPPAttributesWrapper();
                xPPAttributesWrapper.parser = newPullParser;
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-docdecl", false);
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                newPullParser.setInput(inputStream, null);
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.nextToken()) {
                    if (eventType == 0) {
                        startDocument();
                    } else if (eventType == 8) {
                        Log.d("SVGParser", "PROC INSTR: " + newPullParser.getText());
                        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(newPullParser.getText());
                        String nextToken = pathDefinition.nextToken();
                        parseProcessingInstructionAttributes(pathDefinition);
                        nextToken.equals("xml-stylesheet");
                    } else if (eventType != 10) {
                        if (eventType == 2) {
                            String name = newPullParser.getName();
                            if (newPullParser.getPrefix() != null) {
                                name = newPullParser.getPrefix() + ':' + name;
                            }
                            startElement(newPullParser.getNamespace(), newPullParser.getName(), name, xPPAttributesWrapper);
                        } else if (eventType == 3) {
                            String name2 = newPullParser.getName();
                            if (newPullParser.getPrefix() != null) {
                                name2 = newPullParser.getPrefix() + ':' + name2;
                            }
                            endElement(newPullParser.getNamespace(), newPullParser.getName(), name2);
                        } else if (eventType == 4) {
                            int[] iArr = new int[2];
                            text(newPullParser.getTextCharacters(iArr), iArr[0], iArr[1]);
                        } else if (eventType == 5) {
                            text(newPullParser.getText());
                        }
                    } else if (((SVG.Svg) this.svgDocument.rootElement) == null && newPullParser.getText().contains("<!ENTITY ")) {
                        try {
                            Log.d("SVGParser", "Switching to SAX parser to process entities");
                            inputStream.reset();
                            parseUsingSAX(inputStream);
                            return;
                        } catch (IOException unused) {
                            Log.w("SVGParser", "Detected internal entity definitions, but could not parse them.");
                            return;
                        }
                    }
                }
            } catch (XmlPullParserException e) {
                throw new SVGParseException("XML parser problem", e);
            }
        } catch (IOException e2) {
            throw new SVGParseException("Stream error", e2);
        }
    }

    public final void startDocument() {
        SVG svg = new SVG(0, false);
        svg.rootElement = null;
        svg.cssRules = new Headers.Builder(4, (byte) 0);
        svg.idToElementMap = new HashMap();
        this.svgDocument = svg;
    }

    /* JADX WARN: Code restructure failed: missing block: B:204:0x031f, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0509, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:661:0x0c8b  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x0ccc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startElement(java.lang.String r25, java.lang.String r26, java.lang.String r27, org.xml.sax.Attributes r28) {
        /*
            Method dump skipped, instructions count: 3876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    public final void text(String str) {
        if (this.ignoring) {
            return;
        }
        if (this.inMetadataElement) {
            StringBuilder sb = this.metadataElementContents;
            if (sb == null) {
                sb = new StringBuilder(str.length());
                this.metadataElementContents = sb;
            }
            sb.append(str);
            return;
        }
        if (!this.inStyleElement) {
            if (this.currentElement instanceof SVG.TextContainer) {
                appendToTextContainer(str);
            }
        } else {
            StringBuilder sb2 = this.styleElementContents;
            if (sb2 == null) {
                sb2 = new StringBuilder(str.length());
                this.styleElementContents = sb2;
            }
            sb2.append(str);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class XPPAttributesWrapper implements Attributes {
        public XmlPullParser parser;

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final int getLength() {
            return this.parser.getAttributeCount();
        }

        @Override // org.xml.sax.Attributes
        public final String getLocalName(int i) {
            return this.parser.getAttributeName(i);
        }

        @Override // org.xml.sax.Attributes
        public final String getQName(int i) {
            XmlPullParser xmlPullParser = this.parser;
            String attributeName = xmlPullParser.getAttributeName(i);
            if (xmlPullParser.getAttributePrefix(i) == null) {
                return attributeName;
            }
            return xmlPullParser.getAttributePrefix(i) + ':' + attributeName;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(int i) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getURI(int i) {
            return this.parser.getAttributeNamespace(i);
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(int i) {
            return this.parser.getAttributeValue(i);
        }

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str) {
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SAXHandler extends DefaultHandler2 {
        public SAXHandler() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void characters(char[] cArr, int i, int i2) {
            SVGParser.this.text(new String(cArr, i, i2));
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            SVGParser.this.endElement(str, str2, str3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void processingInstruction(String str, String str2) {
            SVGParser.parseProcessingInstructionAttributes(new SVG.PathDefinition(str2));
            str.equals("xml-stylesheet");
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startDocument() {
            SVGParser.this.startDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            SVGParser.this.startElement(str, str2, str3, attributes);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endDocument() {
        }
    }

    public static float parseFloat(String str) {
        int length = str.length();
        if (length != 0) {
            return parseFloat(length, str);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("Invalid float value (empty string)");
        return RecyclerView.DECELERATION_RATE;
    }

    public final void text(char[] cArr, int i, int i2) {
        if (this.ignoring) {
            return;
        }
        if (this.inMetadataElement) {
            StringBuilder sb = this.metadataElementContents;
            if (sb == null) {
                sb = new StringBuilder(i2);
                this.metadataElementContents = sb;
            }
            sb.append(cArr, i, i2);
            return;
        }
        if (this.inStyleElement) {
            StringBuilder sb2 = this.styleElementContents;
            if (sb2 == null) {
                sb2 = new StringBuilder(i2);
                this.styleElementContents = sb2;
            }
            sb2.append(cArr, i, i2);
            return;
        }
        if (this.currentElement instanceof SVG.TextContainer) {
            appendToTextContainer(new String(cArr, i, i2));
        }
    }
}
