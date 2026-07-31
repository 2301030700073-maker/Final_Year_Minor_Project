package org.jsoup.helper;

import androidx.sqlite.SQLite;
import java.io.UncheckedIOException;
import java.nio.charset.Charset;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.jsoup.internal.ControllableInputStream;
import org.jsoup.internal.SimpleStreamReader;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TreeBuilder;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DataUtil {
    public static final Charset UTF_8;
    public static final String defaultCharsetName;

    static {
        Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
        Charset forName = Charset.forName("UTF-8");
        UTF_8 = forName;
        defaultCharsetName = forName.name();
        QueryParser.parse("meta[http-equiv=content-type], meta[charset]");
    }

    public static Printer detectCharset(ControllableInputStream controllableInputStream, Parser parser) {
        String str;
        byte[] bArr = new byte[4];
        controllableInputStream.mark(4);
        controllableInputStream.read(bArr, 0, 4);
        controllableInputStream.reset();
        byte b = bArr[0];
        int i = 1;
        if ((b == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            str = "UTF-32";
        } else if ((b == -2 && bArr[1] == -1) || (b == -1 && bArr[1] == -2)) {
            str = "UTF-16";
        } else if (b == -17 && bArr[1] == -69 && bArr[2] == -65) {
            controllableInputStream.read(bArr, 0, 3);
            str = "UTF-8";
        } else {
            str = null;
        }
        String str2 = str != null ? str : "UTF-8";
        SQLite.notEmpty(str2, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
        Charset forName = str2.equals(defaultCharsetName) ? UTF_8 : Charset.forName(str2);
        Printer printer = new Printer(i);
        printer.root = forName;
        printer.accum = controllableInputStream;
        printer.settings = null;
        return printer;
    }

    public static Document parseInputStream(Printer printer, Parser parser) {
        Document document = (Document) printer.settings;
        if (document != null) {
            return document;
        }
        ControllableInputStream controllableInputStream = (ControllableInputStream) printer.accum;
        Charset charset = (Charset) printer.root;
        SimpleStreamReader simpleStreamReader = new SimpleStreamReader(controllableInputStream, charset);
        try {
            try {
                ReentrantLock reentrantLock = parser.lock;
                try {
                    reentrantLock.lock();
                    TreeBuilder treeBuilder = parser.treeBuilder;
                    treeBuilder.initialiseParse(simpleStreamReader, parser);
                    treeBuilder.runParser();
                    Document document2 = treeBuilder.doc;
                    document2.outputSettings.charset = charset;
                    if (!charset.canEncode()) {
                        document2.charset(UTF_8);
                    }
                    simpleStreamReader.close();
                    return document2;
                } finally {
                    reentrantLock.unlock();
                }
            } catch (UncheckedIOException e) {
                throw e.getCause();
            }
        } catch (Throwable th) {
            try {
                simpleStreamReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
