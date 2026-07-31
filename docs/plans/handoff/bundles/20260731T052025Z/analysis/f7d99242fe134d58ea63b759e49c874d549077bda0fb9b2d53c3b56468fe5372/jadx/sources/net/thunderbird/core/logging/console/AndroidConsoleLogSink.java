package net.thunderbird.core.logging.console;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.DefaultLogger;
import net.thunderbird.core.logging.LogEvent;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogSink;
import net.thunderbird.core.logging.Logger;
import org.jsoup.helper.Validate;
import timber.log.Timber;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidConsoleLogSink implements LogSink {
    public static final Set IGNORE_CLASSES = ArraysKt___ArraysKt.toSet(new String[]{Timber.class.getName(), Timber.Forest.class.getName(), Timber.Tree.class.getName(), Timber.DebugTree.class.getName(), AndroidConsoleLogSink.class.getName()});

    @Override // net.thunderbird.core.logging.LogSink
    public final /* bridge */ boolean canLog(LogLevel logLevel) {
        return Sink$CC.$default$canLog(this, logLevel);
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final LogLevel getLevel() {
        return LogLevel.VERBOSE;
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final void log(LogEvent logEvent) {
        Timber.Forest forest;
        StackTraceElement stackTraceElement;
        String str = logEvent.message;
        Throwable th = logEvent.throwable;
        String str2 = logEvent.tag;
        if (str2 != null) {
            forest = Timber.Forest;
            forest.getClass();
            Timber.Tree[] treeArr = Timber.treeArray;
            int length = treeArr.length;
            int i = 0;
            while (i < length) {
                Timber.Tree tree = treeArr[i];
                i++;
                tree.explicitTag.set(str2);
            }
        } else {
            forest = Timber.Forest;
            Set set = IGNORE_CLASSES;
            set.getClass();
            if (str2 == null) {
                LinkedHashSet<String> plus = Validate.plus(set, (Iterable) ArraysKt___ArraysKt.toSet(new String[]{"net.thunderbird.core.logging.console.ComposeLogTagKt", "net.thunderbird.core.logging.composite.DefaultCompositeLogSink", "net.thunderbird.core.logging.legacy.Log", Logger.class.getName(), DefaultLogger.class.getName()}));
                StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                stackTrace.getClass();
                int length2 = stackTrace.length;
                int i2 = 0;
                loop1: while (true) {
                    if (i2 >= length2) {
                        stackTraceElement = null;
                        break;
                    }
                    stackTraceElement = stackTrace[i2];
                    if (!plus.isEmpty()) {
                        for (String str3 : plus) {
                            String className = stackTraceElement.getClassName();
                            className.getClass();
                            str3.getClass();
                            if (StringsKt__StringsJVMKt.startsWith(className, str3, false)) {
                                break;
                            }
                        }
                        break loop1;
                    }
                    break;
                    i2++;
                }
                if (stackTraceElement != null) {
                    String className2 = stackTraceElement.getClassName();
                    className2.getClass();
                    str2 = StringsKt.substringAfterLast('.', className2, className2);
                    Pattern compile = Pattern.compile("(\\$\\d+)+$");
                    compile.getClass();
                    if (compile.matcher(str2).find()) {
                        str2 = compile.matcher(str2).replaceAll("");
                        str2.getClass();
                    }
                } else {
                    str2 = null;
                }
            }
            String str4 = str2 != null ? str2 : null;
            if (str4 == null) {
                str4 = AndroidConsoleLogSink.class.getName();
            }
            forest.getClass();
            Timber.Tree[] treeArr2 = Timber.treeArray;
            int length3 = treeArr2.length;
            int i3 = 0;
            while (i3 < length3) {
                Timber.Tree tree2 = treeArr2[i3];
                i3++;
                tree2.explicitTag.set(str4);
            }
        }
        int ordinal = logEvent.level.ordinal();
        if (ordinal == 0) {
            forest.v(th, str, new Object[0]);
            return;
        }
        if (ordinal == 1) {
            forest.d(th, str, new Object[0]);
            return;
        }
        if (ordinal == 2) {
            forest.i(th, str, new Object[0]);
            return;
        }
        if (ordinal == 3) {
            forest.w(th, str, new Object[0]);
        } else if (ordinal == 4) {
            forest.e(th, str, new Object[0]);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }
}
