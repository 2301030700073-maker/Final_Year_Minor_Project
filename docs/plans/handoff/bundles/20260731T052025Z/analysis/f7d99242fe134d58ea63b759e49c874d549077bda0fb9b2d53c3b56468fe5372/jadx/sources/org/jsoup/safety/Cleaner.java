package org.jsoup.safety;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner$ConnectResult;
import okhttp3.internal.connection.RoutePlanner$Plan;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Cleaner implements ExchangeFinder, NodeVisitor {
    public final Object safelist;

    public Cleaner(_UtilJvmKt$$ExternalSyntheticLambda1 _utiljvmkt__externalsyntheticlambda1) {
        this.safelist = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), _utiljvmkt__externalsyntheticlambda1);
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealConnection find() {
        RoutePlanner$Plan plan;
        IOException iOException = null;
        while (!((RealRoutePlanner) this.safelist).call.canceled) {
            try {
                plan = ((RealRoutePlanner) this.safelist).plan();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    ResultKt.addSuppressed(iOException, e);
                }
                if (!((RealRoutePlanner) this.safelist).hasNext(null)) {
                    throw iOException;
                }
            }
            if (!plan.isReady()) {
                RoutePlanner$ConnectResult connectTcp = plan.connectTcp();
                if (connectTcp.nextPlan == null && connectTcp.throwable == null) {
                    connectTcp = plan.connectTlsEtc();
                }
                RoutePlanner$Plan routePlanner$Plan = connectTcp.nextPlan;
                Throwable th = connectTcp.throwable;
                if (th != null) {
                    throw th;
                }
                if (routePlanner$Plan != null) {
                    ((RealRoutePlanner) this.safelist).deferredPlans.addFirst(routePlanner$Plan);
                }
            }
            return plan.handleSuccess();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Canceled");
        return null;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealRoutePlanner getRoutePlanner() {
        return (RealRoutePlanner) this.safelist;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        StringBuilder sb = (StringBuilder) this.safelist;
        if (node instanceof TextNode) {
            TextNode textNode = (TextNode) node;
            String coreValue = textNode.coreValue();
            if (Element.preserveWhitespace(textNode.parentNode) || (textNode instanceof CDataNode)) {
                sb.append(coreValue);
                return;
            } else {
                StringUtil.appendNormalisedWhitespace(coreValue, sb, TextNode.lastCharIsWhitespace(sb));
                return;
            }
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (sb.length() > 0) {
                if ((element.tag.isBlock || element.nameIs("br")) && !TextNode.lastCharIsWhitespace(sb)) {
                    sb.append(' ');
                }
            }
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
        StringBuilder sb = (StringBuilder) this.safelist;
        if (node instanceof Element) {
            Element element = (Element) node;
            Node nextSibling = node.nextSibling();
            if (element.tag.isBlock) {
                if (((nextSibling instanceof TextNode) || ((nextSibling instanceof Element) && !((Element) nextSibling).tag.formatAsBlock)) && !TextNode.lastCharIsWhitespace(sb)) {
                    sb.append(' ');
                }
            }
        }
    }

    public Cleaner(Locale locale) {
        if (locale != null) {
            this.safelist = locale;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Locale must not be null");
            throw null;
        }
    }

    public /* synthetic */ Cleaner(Object obj) {
        this.safelist = obj;
    }
}
