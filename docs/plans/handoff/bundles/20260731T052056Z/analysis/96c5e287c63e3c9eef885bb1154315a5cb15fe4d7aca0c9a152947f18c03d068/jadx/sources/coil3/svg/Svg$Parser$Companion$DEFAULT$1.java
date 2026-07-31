package coil3.svg;

import android.util.Log;
import coil3.svg.internal.AndroidSvg;
import com.caverock.androidsvg.SVGParser;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import okio.BufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Svg$Parser$Companion$DEFAULT$1 implements FunctionAdapter {
    public static final Svg$Parser$Companion$DEFAULT$1 INSTANCE = new Svg$Parser$Companion$DEFAULT$1();

    public final boolean equals(Object obj) {
        if ((obj instanceof Svg$Parser$Companion$DEFAULT$1) && (obj instanceof FunctionAdapter)) {
            return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(1, ExceptionsKt.class, "parseSvg", "parseSvg(Lokio/BufferedSource;)Lcoil3/svg/Svg;", 1);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    public final AndroidSvg parse(BufferedSource bufferedSource) {
        InputStream inputStream = bufferedSource.inputStream();
        SVGParser sVGParser = new SVGParser();
        sVGParser.svgDocument = null;
        sVGParser.currentElement = null;
        sVGParser.ignoring = false;
        sVGParser.inMetadataElement = false;
        sVGParser.metadataTag = null;
        sVGParser.metadataElementContents = null;
        sVGParser.inStyleElement = false;
        sVGParser.styleElementContents = null;
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            inputStream.mark(3);
            int read = inputStream.read() + (inputStream.read() << 8);
            inputStream.reset();
            if (read == 35615) {
                inputStream = new BufferedInputStream(new GZIPInputStream(inputStream));
            }
        } catch (IOException unused) {
        }
        try {
            inputStream.mark(4096);
            sVGParser.parseUsingXmlPullParser(inputStream);
            return new AndroidSvg(sVGParser.svgDocument);
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused2) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
        }
    }
}
