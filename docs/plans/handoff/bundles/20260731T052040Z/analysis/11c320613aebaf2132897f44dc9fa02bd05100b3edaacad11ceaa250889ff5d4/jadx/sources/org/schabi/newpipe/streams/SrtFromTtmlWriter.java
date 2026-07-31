package org.schabi.newpipe.streams;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.platform.AndroidComposeView$indirectPointerNavigationGestureDetector$1;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LiveData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.io.ByteArrayInputStream;
import java.io.StringReader;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.helper.DataUtil;
import org.jsoup.internal.ControllableInputStream;
import org.jsoup.internal.SimpleBufferedInput;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.Printer;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tokeniser;
import org.jsoup.parser.TreeBuilder;
import org.jsoup.parser.XmlTreeBuilder;
import org.jsoup.select.Elements;
import org.schabi.newpipe.streams.SrtFromTtmlWriter;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SrtFromTtmlWriter {
    public final /* synthetic */ int $r8$classId;
    public final Object charset;
    public int frameIndex;
    public boolean ignoreEmptyFrames;
    public final Object out;

    public SrtFromTtmlWriter(Context context, AndroidComposeView$indirectPointerNavigationGestureDetector$1 androidComposeView$indirectPointerNavigationGestureDetector$1) {
        this.$r8$classId = 1;
        this.out = androidComposeView$indirectPointerNavigationGestureDetector$1;
        this.frameIndex = 0;
        this.charset = new GestureDetector(context, new GestureDetector.OnGestureListener() { // from class: androidx.compose.ui.platform.IndirectPointerNavigationGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                SrtFromTtmlWriter srtFromTtmlWriter = SrtFromTtmlWriter.this;
                AndroidComposeView$indirectPointerNavigationGestureDetector$1 androidComposeView$indirectPointerNavigationGestureDetector$12 = (AndroidComposeView$indirectPointerNavigationGestureDetector$1) srtFromTtmlWriter.out;
                if (!srtFromTtmlWriter.ignoreEmptyFrames) {
                    int i = srtFromTtmlWriter.frameIndex;
                    if (i == 1) {
                        if (Math.abs(f) > Math.abs(f2)) {
                            androidComposeView$indirectPointerNavigationGestureDetector$12.invoke(new FocusDirection(f > 0.0f ? 1 : 2));
                            return true;
                        }
                    } else if (i == 2 && Math.abs(f2) > Math.abs(f)) {
                        androidComposeView$indirectPointerNavigationGestureDetector$12.invoke(new FocusDirection(f2 > 0.0f ? 1 : 2));
                    }
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }
        });
    }

    public static void extractText(Node node, StringBuilder sb) {
        if (node instanceof TextNode) {
            String coreValue = ((TextNode) node).coreValue();
            String str = "";
            if (coreValue != null) {
                if (coreValue.indexOf(38) >= 0) {
                    Parser parser = new Parser(new HtmlTreeBuilder());
                    if (coreValue.indexOf(38) >= 0) {
                        StringReader stringReader = new StringReader(coreValue);
                        TreeBuilder treeBuilder = parser.treeBuilder;
                        treeBuilder.initialiseParse(stringReader, parser);
                        Tokeniser tokeniser = new Tokeniser(treeBuilder);
                        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                        while (true) {
                            CharacterReader characterReader = tokeniser.reader;
                            if (characterReader.isEmpty()) {
                                break;
                            }
                            borrowBuilder.append(characterReader.consumeTo('&'));
                            if (characterReader.matches('&')) {
                                characterReader.consume();
                                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, true);
                                if (consumeCharacterReference == null || consumeCharacterReference.length == 0) {
                                    borrowBuilder.append('&');
                                } else {
                                    borrowBuilder.appendCodePoint(consumeCharacterReference[0]);
                                    if (consumeCharacterReference.length == 2) {
                                        borrowBuilder.appendCodePoint(consumeCharacterReference[1]);
                                    }
                                }
                            }
                        }
                        coreValue = StringUtil.releaseBuilder(borrowBuilder);
                    }
                }
                str = coreValue.replace((char) 160, ' ').replace((char) 8239, ' ').replace((char) 8287, ' ').replace((char) 12288, ' ').replaceAll("[\\u2000-\\u200A]", " ").replaceAll("[\\u200B-\\u200F]", "").replaceAll("[\\u0000-\\u0008\\u000B\\u000C\\u000E-\\u001F]", "").replace('\t', ' ').replace("\r\n", "\n").replace("\r", "\n").replace("\n", "\r\n");
            }
            sb.append(str);
        } else if ((node instanceof Element) && ((Element) node).tag.tagName.equalsIgnoreCase("br")) {
            sb.append("\r\n");
        }
        Iterator it = node.childNodes().iterator();
        while (it.hasNext()) {
            extractText((Node) it.next(), sb);
        }
    }

    public void build(SharpStream sharpStream) {
        Printer printer;
        byte[] bArr = new byte[(int) sharpStream.available()];
        sharpStream.read(bArr);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Parser parser = new Parser(new XmlTreeBuilder());
        parser.maxDepth = Log.LOG_LEVEL_OFF;
        Charset charset = DataUtil.UTF_8;
        try {
            printer = DataUtil.detectCharset(new ControllableInputStream(new SimpleBufferedInput(byteArrayInputStream)), parser);
            try {
                Document parseInputStream = DataUtil.parseInputStream(printer, parser);
                ((ControllableInputStream) printer.accum).close();
                StringBuilder sb = new StringBuilder(128);
                Elements select = parseInputStream.select("body > div > p");
                if (select.isEmpty()) {
                    return;
                }
                Iterator<E> it = select.iterator();
                while (it.hasNext()) {
                    Element element = (Element) it.next();
                    sb.setLength(0);
                    extractText(element, sb);
                    if (!this.ignoreEmptyFrames || sb.length() >= 1) {
                        String replace = element.attr("begin").replace('.', ',');
                        String replace2 = element.attr(TtmlNode.END).replace('.', ',');
                        writeString(String.valueOf(this.frameIndex));
                        this.frameIndex++;
                        writeString("\r\n");
                        writeString(replace);
                        writeString(" --> ");
                        writeString(replace2);
                        writeString("\r\n");
                        writeString(sb.toString());
                        writeString("\r\n");
                        writeString("\r\n");
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (printer != null) {
                    ((ControllableInputStream) printer.accum).close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            printer = null;
        }
    }

    public void continueSettlingToState(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.out;
        Object obj2 = this.charset;
        switch (i2) {
            case 2:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj2;
                WeakReference weakReference = bottomSheetBehavior.viewRef;
                if (weakReference != null && weakReference.get() != null) {
                    this.frameIndex = i;
                    if (!this.ignoreEmptyFrames) {
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        ((View) bottomSheetBehavior.viewRef.get()).postOnAnimation((LiveData.AnonymousClass1) obj);
                        this.ignoreEmptyFrames = true;
                        break;
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj2;
                WeakReference weakReference2 = sideSheetBehavior.viewRef;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.frameIndex = i;
                    if (!this.ignoreEmptyFrames) {
                        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                        ((View) sideSheetBehavior.viewRef.get()).postOnAnimation((ReportExecutor$$ExternalSyntheticLambda0) obj);
                        this.ignoreEmptyFrames = true;
                        break;
                    }
                }
                break;
        }
    }

    public void writeString(String str) {
        ((SharpStream) this.out).write(str.getBytes((Charset) this.charset));
    }

    public SrtFromTtmlWriter(SideSheetBehavior sideSheetBehavior) {
        this.$r8$classId = 3;
        this.charset = sideSheetBehavior;
        this.out = new ReportExecutor$$ExternalSyntheticLambda0(this, 16);
    }

    public SrtFromTtmlWriter(BottomSheetBehavior bottomSheetBehavior) {
        this.$r8$classId = 2;
        this.charset = bottomSheetBehavior;
        this.out = new LiveData.AnonymousClass1(this, 16);
    }

    public SrtFromTtmlWriter(SharpStream sharpStream, boolean z) {
        this.$r8$classId = 0;
        this.charset = StandardCharsets.UTF_8;
        this.frameIndex = 1;
        this.out = sharpStream;
        this.ignoreEmptyFrames = z;
    }
}
