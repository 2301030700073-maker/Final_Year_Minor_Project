package timber.log;

import android.os.Build;
import android.util.Log;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Timber {
    public static final Forest Forest = new Forest();
    public static final ArrayList trees = new ArrayList();
    public static volatile Tree[] treeArray = new Tree[0];

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DebugTree extends Tree {
        public static final Pattern ANONYMOUS_CLASS = Pattern.compile("(\\$\\d+)+$");
        public final List fqcnIgnore = IntOffsetKt.listOf((Object[]) new String[]{Timber.class.getName(), Forest.class.getName(), Tree.class.getName(), DebugTree.class.getName()});

        @Override // timber.log.Timber.Tree
        public final String getTag$timber_release() {
            String tag$timber_release = super.getTag$timber_release();
            if (tag$timber_release != null) {
                return tag$timber_release;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            stackTrace.getClass();
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (!this.fqcnIgnore.contains(stackTraceElement.getClassName())) {
                    String className = stackTraceElement.getClassName();
                    className.getClass();
                    String substringAfterLast = StringsKt.substringAfterLast('.', className, className);
                    Matcher matcher = ANONYMOUS_CLASS.matcher(substringAfterLast);
                    if (matcher.find()) {
                        substringAfterLast = matcher.replaceAll("");
                        substringAfterLast.getClass();
                    }
                    return (substringAfterLast.length() <= 23 || Build.VERSION.SDK_INT >= 26) ? substringAfterLast : substringAfterLast.substring(0, 23);
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Array contains no element matching the predicate.");
            return null;
        }

        @Override // timber.log.Timber.Tree
        public final void log(int i, String str, String str2) {
            int min;
            str2.getClass();
            if (str2.length() < 4000) {
                if (i == 7) {
                    Log.wtf(str, str2);
                    return;
                } else {
                    Log.println(i, str, str2);
                    return;
                }
            }
            int length = str2.length();
            int i2 = 0;
            while (i2 < length) {
                int indexOf$default = StringsKt.indexOf$default(str2, '\n', i2, 4);
                if (indexOf$default == -1) {
                    indexOf$default = length;
                }
                while (true) {
                    min = Math.min(indexOf$default, i2 + 4000);
                    String substring = str2.substring(i2, min);
                    if (i == 7) {
                        Log.wtf(str, substring);
                    } else {
                        Log.println(i, str, substring);
                    }
                    if (min >= indexOf$default) {
                        break;
                    } else {
                        i2 = min;
                    }
                }
                i2 = min + 1;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Forest extends Tree {
        @Override // timber.log.Timber.Tree
        public final void d(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.treeArray) {
                tree.d(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void e(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.treeArray) {
                tree.e(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void i(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.treeArray) {
                tree.i(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void log(int i, String str, String str2) {
            str2.getClass();
            throw new AssertionError();
        }

        public final void plant(DebugTree debugTree) {
            if (debugTree == this) {
                UriKt$$ExternalSyntheticBUOutline0.m("Cannot plant Timber into itself.");
                return;
            }
            ArrayList arrayList = Timber.trees;
            synchronized (arrayList) {
                arrayList.add(debugTree);
                Object[] array = arrayList.toArray(new Tree[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                Timber.treeArray = (Tree[]) array;
            }
        }

        @Override // timber.log.Timber.Tree
        public final void v(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.treeArray) {
                tree.v(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }

        @Override // timber.log.Timber.Tree
        public final void w(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.treeArray) {
                tree.w(th, str, Arrays.copyOf(objArr, objArr.length));
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Tree {
        public final ThreadLocal explicitTag = new ThreadLocal();

        public void d(Throwable th, String str, Object... objArr) {
            prepareLog(3, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public void e(Throwable th, String str, Object... objArr) {
            prepareLog(6, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public /* synthetic */ String getTag$timber_release() {
            ThreadLocal threadLocal = this.explicitTag;
            String str = (String) threadLocal.get();
            if (str != null) {
                threadLocal.remove();
            }
            return str;
        }

        public void i(Throwable th, String str, Object... objArr) {
            prepareLog(4, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public abstract void log(int i, String str, String str2);

        public final void prepareLog(int i, Throwable th, String str, Object... objArr) {
            String tag$timber_release = getTag$timber_release();
            if (str != null && str.length() != 0) {
                if (objArr.length != 0) {
                    Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                    str = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
                }
                if (th != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append((Object) str);
                    sb.append('\n');
                    StringWriter stringWriter = new StringWriter(256);
                    PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    String stringWriter2 = stringWriter.toString();
                    stringWriter2.getClass();
                    sb.append(stringWriter2);
                    str = sb.toString();
                }
            } else {
                if (th == null) {
                    return;
                }
                StringWriter stringWriter3 = new StringWriter(256);
                PrintWriter printWriter2 = new PrintWriter((Writer) stringWriter3, false);
                th.printStackTrace(printWriter2);
                printWriter2.flush();
                str = stringWriter3.toString();
                str.getClass();
            }
            log(i, tag$timber_release, str);
        }

        public void v(Throwable th, String str, Object... objArr) {
            prepareLog(2, th, str, Arrays.copyOf(objArr, objArr.length));
        }

        public void w(Throwable th, String str, Object... objArr) {
            prepareLog(5, th, str, Arrays.copyOf(objArr, objArr.length));
        }
    }
}
