package kotlin.math;

import android.content.Context;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.util.Linkify;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.ActionMode;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt$bringIntoView$2;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.os.BundleKt;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.widget.TextViewCompat$OreoCallback;
import androidx.lifecycle.ViewModel;
import androidx.sqlite.SQLite;
import androidx.transition.FragmentTransitionSupport$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.google.protobuf.Internal;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import j$.time.LocalDateTime;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.Constructor;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.NullableSerializer;
import net.newpipe.app.AppKt;
import okhttp3.CipherSuite;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.HttpUrl;
import okhttp3.TlsVersion;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.acra.util.PackageManagerWrapperKt;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.timeago.PatternMap;
import org.schabi.newpipe.extractor.timeago.PatternsHolder;
import org.schabi.newpipe.util.ZipHelper;
import us.shandian.giga.util.Utility;

/* loaded from: classes.dex */
public abstract class MathKt {
    public static volatile ByteString.Companion errorHandler;

    public static final Object bringIntoView(DelegatableNode delegatableNode, Function0 function0, SuspendLambda suspendLambda) {
        Object obj;
        NodeCoordinator requireLayoutCoordinates;
        Object bringIntoView;
        NodeChain nodeChain;
        if (((Modifier.Node) delegatableNode).node.isAttached) {
            Modifier.Node node = (Modifier.Node) delegatableNode;
            if (!node.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node2 = node.node.parent;
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(delegatableNode);
            loop0: while (true) {
                obj = null;
                if (requireLayoutNode == null) {
                    break;
                }
                if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 524288) != 0) {
                    while (node2 != null) {
                        if ((node2.kindSet & 524288) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof BringIntoViewModifierNode) {
                                    obj = node3;
                                    break loop0;
                                }
                                if ((node3.kindSet & 524288) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 524288) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.add(node4);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.access$pop(mutableVector);
                            }
                        }
                        node2 = node2.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
            }
            BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
            if (bringIntoViewModifierNode != null && (bringIntoView = bringIntoViewModifierNode.bringIntoView((requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(delegatableNode)), new BringIntoViewModifierNodeKt$bringIntoView$2(function0, requireLayoutCoordinates), suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return bringIntoView;
            }
        }
        return Unit.INSTANCE;
    }

    public static final void checkElementIndex$runtime(int i, int i2) {
        if (i < 0 || i >= i2) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkPositionIndex$runtime(int i, int i2) {
        if (i < 0 || i > i2) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkRangeIndexes$runtime(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("fromIndex: ", i, ", toIndex: ", i2, i3);
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static ViewModel createViewModel(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!java.lang.reflect.Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new RuntimeException("Cannot create an instance of " + cls);
            }
            try {
                Object newInstance = declaredConstructor.newInstance(null);
                newInstance.getClass();
                return (ViewModel) newInstance;
            } catch (IllegalAccessException e) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e);
                return null;
            } catch (InstantiationException e2) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e2);
                return null;
            }
        } catch (NoSuchMethodException e3) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e3);
            return null;
        }
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m663equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static String escapeBytes(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            if (b == 34) {
                sb.append("\\\"");
            } else if (b == 39) {
                sb.append("\\'");
            } else if (b != 92) {
                switch (b) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (b < 32 || b > 126) {
                            sb.append('\\');
                            sb.append((char) (((b >>> 6) & 3) + 48));
                            sb.append((char) (((b >>> 3) & 7) + 48));
                            sb.append((char) ((b & 7) + 48));
                            break;
                        } else {
                            sb.append((char) b);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m664finalConstraintstfFHcEY(long j, boolean z, int i, float f) {
        int m434getMaxWidthimpl = ((z || i == 2 || i == 4 || i == 5) && Constraints.m430getHasBoundedWidthimpl(j)) ? Constraints.m434getMaxWidthimpl(j) : Log.LOG_LEVEL_OFF;
        if (Constraints.m436getMinWidthimpl(j) != m434getMaxWidthimpl) {
            m434getMaxWidthimpl = RangesKt.coerceIn(Cookie.Companion.ceilToIntPx(f), Constraints.m436getMinWidthimpl(j), m434getMaxWidthimpl);
        }
        return AppKt.m700fitPrioritizingWidthZbe2FdA(0, m434getMaxWidthimpl, 0, Constraints.m433getMaxHeightimpl(j));
    }

    public static Handshake get(SSLSession sSLSession) {
        List list;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("cipherSuite == null");
            return null;
        }
        if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("cipherSuite == ".concat(cipherSuite));
            return null;
        }
        CipherSuite m710forJavaName = CipherSuite.Companion.m710forJavaName(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("tlsVersion == null");
            return null;
        }
        if ("NONE".equals(protocol)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("tlsVersion == NONE");
            return null;
        }
        TlsVersion.Companion.getClass();
        TlsVersion forJavaName = HttpUrl.Companion.forJavaName(protocol);
        try {
            list = _UtilJvmKt.toImmutableList(sSLSession.getPeerCertificates());
        } catch (SSLPeerUnverifiedException unused) {
            list = EmptyList.INSTANCE;
        }
        return new Handshake(forJavaName, m710forJavaName, _UtilJvmKt.toImmutableList(sSLSession.getLocalCertificates()), new Handshake$Companion$$ExternalSyntheticLambda0(0, list));
    }

    /* renamed from: getInt-impl, reason: not valid java name */
    public static final int m665getIntimpl(Bundle bundle, String str) {
        str.getClass();
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i != Integer.MIN_VALUE || bundle.getInt(str, Log.LOG_LEVEL_OFF) != Integer.MAX_VALUE) {
            return i;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static final KSerializer getNullable(KSerializer kSerializer) {
        return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return ZipHelper.getParcelable(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (cls.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    /* renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m666getSavedStateimpl(Bundle bundle, String str) {
        str.getClass();
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static final long getSp(double d) {
        return pack(4294967296L, (float) d);
    }

    public static PrecomputedTextCompat.Params getTextMetricsParams(AppCompatTextView appCompatTextView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new PrecomputedTextCompat.Params(PackageManagerWrapperKt.getTextMetricsParams(appCompatTextView));
        }
        TextPaint textPaint = new TextPaint(appCompatTextView.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = appCompatTextView.getBreakStrategy();
        int hyphenationFrequency = appCompatTextView.getHyphenationFrequency();
        if (appCompatTextView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            if (i < 28 || (appCompatTextView.getInputType() & 15) != 3) {
                boolean z = appCompatTextView.getLayoutDirection() == 1;
                switch (appCompatTextView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                        break;
                }
            } else {
                byte directionality = Character.getDirectionality(PackageManagerWrapperKt.getDigitStrings(Utility.getInstance(appCompatTextView.getTextLocale()))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
        }
        return new PrecomputedTextCompat.Params(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static TimeAgoParser getTimeAgoParserFor(Localization localization) {
        LocalDateTime now = LocalDateTime.now();
        String languageCode = localization.getLanguageCode();
        String countryCode = localization.getCountryCode();
        PatternsHolder patternsHolder = (PatternsHolder) PatternMap.patternMap.get(Owner.CC.m$1(languageCode, (countryCode == null || countryCode.isEmpty()) ? "" : "_".concat(countryCode)));
        if (patternsHolder == null) {
            return null;
        }
        return new TimeAgoParser(patternsHolder, now);
    }

    public static boolean isEscapable(int i, CharSequence charSequence) {
        if (i >= charSequence.length()) {
            return false;
        }
        char charAt = charSequence.charAt(i);
        switch (charAt) {
            case '!':
            case '\"':
            case '#':
            case '$':
            case Token.SETPROP /* 37 */:
            case '&':
            case Token.GETELEM /* 39 */:
            case Token.GETELEM_SUPER /* 40 */:
            case Token.SETELEM /* 41 */:
            case '*':
            case Token.CALL /* 43 */:
            case Token.NAME /* 44 */:
            case Token.NUMBER /* 45 */:
            case Token.STRING /* 46 */:
            case Token.NULL /* 47 */:
                return true;
            default:
                switch (charAt) {
                    case Token.INSTANCEOF /* 58 */:
                    case Token.LOCAL_LOAD /* 59 */:
                    case Token.GETVAR /* 60 */:
                    case Token.SETVAR /* 61 */:
                    case Token.CATCH_SCOPE /* 62 */:
                    case Token.ENUM_INIT_KEYS /* 63 */:
                    case '@':
                        return true;
                    default:
                        switch (charAt) {
                            case Token.SEMI /* 91 */:
                            case Token.LB /* 92 */:
                            case Token.RB /* 93 */:
                            case Token.LC /* 94 */:
                            case Token.RC /* 95 */:
                            case Token.LP /* 96 */:
                                return true;
                            default:
                                switch (charAt) {
                                    case Token.EXPORT /* 123 */:
                                    case Token.IMPORT /* 124 */:
                                    case Token.IF /* 125 */:
                                    case Token.ELSE /* 126 */:
                                        return true;
                                    default:
                                        return false;
                                }
                        }
                }
        }
    }

    public static boolean isStreamsTab(ListLinkHandler listLinkHandler) {
        List contentFilters = listLinkHandler.getContentFilters();
        if (contentFilters.isEmpty()) {
            return false;
        }
        String str = (String) contentFilters.get(0);
        str.getClass();
        switch (str) {
        }
        return false;
    }

    public static CallbackToFutureAdapter$SafeFuture launchFuture$default(CoroutineContext coroutineContext, Function2 function2) {
        coroutineContext.getClass();
        return SQLite.getFuture(new FragmentTransitionSupport$$ExternalSyntheticLambda0(coroutineContext, CoroutineStart.DEFAULT, function2));
    }

    public static void onError(Throwable th) {
        ByteString.Companion companion = errorHandler;
        if (th == null) {
            th = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
        } else if (!(th instanceof OnErrorNotImplementedException) && !(th instanceof MissingBackpressureException) && !(th instanceof QueueOverflowException) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof CompositeException)) {
            th = new UndeliverableException("The exception could not be delivered to the consumer because it has already canceled/disposed the flow or the exception has nowhere to go to begin with. Further reading: https://github.com/ReactiveX/RxJava/wiki/What's-different-in-2.0#error-handling | " + th, th);
        }
        if (companion != null) {
            try {
                companion.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
            }
        }
        th.printStackTrace();
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    public static final long pack(long j, float f) {
        long floatToRawIntBits = j | (Float.floatToRawIntBits(f) & 4294967295L);
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return floatToRawIntBits;
    }

    public static final String readText(Reader reader) {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int read = reader.read(cArr);
        while (read >= 0) {
            stringWriter.write(cArr, 0, read);
            read = reader.read(cArr);
        }
        String stringWriter2 = stringWriter.toString();
        stringWriter2.getClass();
        return stringWriter2;
    }

    public static TypedValue resolve(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        TypedValue resolve = resolve(context, i);
        return (resolve == null || resolve.type != 18) ? z : resolve.data != 0;
    }

    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot round NaN value.");
            return 0;
        }
        if (d > 2.147483647E9d) {
            return Log.LOG_LEVEL_OFF;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    public static long roundToLong(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot round NaN value.");
        return 0L;
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            PackageManagerWrapperKt.setFirstBaselineToTopHeight(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void setLineHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return;
        }
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static final void setTextWithLinks(TextView textView, CharSequence charSequence) {
        textView.getClass();
        charSequence.getClass();
        SpannableString spannableString = new SpannableString(charSequence);
        Linkify.addLinks(spannableString, Patterns.WEB_URL, (String) null);
        textView.setText(spannableString);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static int skip(char c, int i, int i2, CharSequence charSequence) {
        while (i < i2) {
            if (charSequence.charAt(i) != c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int skipSpaceTab(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if (charAt != '\t' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m667toStringimpl(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            return "CornerRadius.circular(" + BundleKt.toStringAsFixed(Float.intBitsToFloat(i)) + ')';
        }
        return "CornerRadius.elliptical(" + BundleKt.toStringAsFixed(Float.intBitsToFloat(i)) + ", " + BundleKt.toStringAsFixed(Float.intBitsToFloat(i2)) + ')';
    }

    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        return (!(callback instanceof TextViewCompat$OreoCallback) || Build.VERSION.SDK_INT < 26) ? callback : ((TextViewCompat$OreoCallback) callback).mCallback;
    }

    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof TextViewCompat$OreoCallback) || callback == null) ? callback : new TextViewCompat$OreoCallback(callback, textView);
    }

    public boolean canReverse() {
        return false;
    }

    public abstract void start();

    public abstract void stop();

    public static final long getSp(int i) {
        return pack(4294967296L, i);
    }

    public void reverse() {
    }

    public static int roundToInt(float f) {
        if (!Float.isNaN(f)) {
            return Math.round(f);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot round NaN value.");
        return 0;
    }

    public static String escapeBytes(com.google.protobuf.ByteString byteString) {
        byte[] bArr;
        int size = byteString.size();
        if (size == 0) {
            bArr = Internal.EMPTY_BYTE_ARRAY;
        } else {
            byte[] bArr2 = new byte[size];
            byteString.copyToInternal(size, bArr2);
            bArr = bArr2;
        }
        return escapeBytes(bArr);
    }
}
