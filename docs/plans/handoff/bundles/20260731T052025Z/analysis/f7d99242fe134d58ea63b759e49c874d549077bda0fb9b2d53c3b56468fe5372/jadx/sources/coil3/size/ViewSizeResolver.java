package coil3.size;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.FragmentManager;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.SQLiteConnection;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.Dimension;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ViewSizeResolver<T extends View> extends SizeResolver {
    boolean getSubtractPadding();

    T getView();

    @Override // coil3.size.SizeResolver
    Object size(Continuation continuation);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: coil3.size.ViewSizeResolver$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onPostMigrate(AutoMigrationSpec autoMigrationSpec, SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                autoMigrationSpec.onPostMigrate(((SupportSQLiteConnection) sQLiteConnection).db);
            }
        }

        public static Dimension $private$getDimension(int i, int i2, int i3) {
            if (i == -2) {
                return Dimension.Undefined.INSTANCE;
            }
            int i4 = i - i3;
            if (i4 > 0) {
                return Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i4));
            }
            int i5 = i2 - i3;
            if (i5 > 0) {
                return Dimension.Pixels.m902boximpl(DimensionKt.Dimension(i5));
            }
            return null;
        }

        public static Size $private$getSize(ViewSizeResolver viewSizeResolver) {
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            Dimension $private$getDimension = $private$getDimension(layoutParams != null ? layoutParams.width : -1, viewSizeResolver.getView().getWidth(), viewSizeResolver.getSubtractPadding() ? viewSizeResolver.getView().getPaddingRight() + viewSizeResolver.getView().getPaddingLeft() : 0);
            if ($private$getDimension == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams2 = viewSizeResolver.getView().getLayoutParams();
            Dimension $private$getDimension2 = $private$getDimension(layoutParams2 != null ? layoutParams2.height : -1, viewSizeResolver.getView().getHeight(), viewSizeResolver.getSubtractPadding() ? viewSizeResolver.getView().getPaddingBottom() + viewSizeResolver.getView().getPaddingTop() : 0);
            if ($private$getDimension2 == null) {
                return null;
            }
            return new Size($private$getDimension, $private$getDimension2);
        }

        public static final void _applyState(int i, View view, ViewGroup viewGroup) {
            view.getClass();
            viewGroup.getClass();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Calling apply state");
            }
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
            if (ordinal == 0) {
                ViewParent parent = view.getParent();
                ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup2 != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2);
                    }
                    viewGroup2.removeView(view);
                    return;
                }
                return;
            }
            if (ordinal == 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                }
                ViewParent parent2 = view.getParent();
                if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup);
                    }
                    viewGroup.addView(view);
                }
                view.setVisibility(0);
                return;
            }
            if (ordinal == 2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                }
                view.setVisibility(8);
                return;
            }
            if (ordinal != 3) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
            }
            view.setVisibility(4);
        }

        public static int _fromDatabaseName(String str) {
            for (int i : ImageAnalysis$$ExternalSyntheticLambda3.values(3)) {
                if (getDatabaseName(i).equals(str)) {
                    return i;
                }
            }
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown value: ", str));
            return 0;
        }

        public static /* synthetic */ String getDatabaseName(int i) {
            if (i == 1) {
                return "unknown";
            }
            if (i == 2) {
                return "false";
            }
            if (i == 3) {
                return "true";
            }
            throw null;
        }

        public static /* synthetic */ boolean getIsComplete(int i) {
            if (i == 1 || i == 2 || i == 3) {
                return false;
            }
            if (i == 4 || i == 5) {
                return true;
            }
            throw null;
        }

        public static /* synthetic */ long getSize(int i) {
            switch (i) {
                case 1:
                    return 1L;
                case 2:
                    return 1024L;
                case 3:
                    return 1048576L;
                case 4:
                    return 1073741824L;
                case 5:
                    return 1099511627776L;
                case 6:
                    return 1125899906842624L;
                default:
                    throw null;
            }
        }

        public static /* synthetic */ void m(AutoCloseable autoCloseable) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) autoCloseable);
                return;
            }
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else if (autoCloseable instanceof ContentProviderClient) {
                ((ContentProviderClient) autoCloseable).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            }
        }

        public static /* synthetic */ String stringValueOf(int i) {
            return i != 1 ? i != 2 ? i != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
        }

        public static /* synthetic */ String stringValueOf$1(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
        }

        public static /* synthetic */ String stringValueOf$3(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "MEMORY_CACHE" : "RESOURCE_DISK_CACHE" : "DATA_DISK_CACHE" : "REMOTE" : "LOCAL";
        }

        public static /* synthetic */ String stringValueOf$6(int i) {
            switch (i) {
                case 1:
                    return "INITIALIZE";
                case 2:
                    return "RESOURCE_CACHE";
                case 3:
                    return "DATA_CACHE";
                case 4:
                    return "SOURCE";
                case 5:
                    return "ENCODE";
                case 6:
                    return "FINISHED";
                default:
                    return "null";
            }
        }

        public static Object m(Class cls, Scope scope, Qualifier qualifier, ParametersHolder parametersHolder, GapComposer gapComposer) {
            Object resolve = scope.resolve(Reflection.getOrCreateKotlinClass(cls), parametersHolder, qualifier);
            gapComposer.updateRememberedValue(resolve);
            return resolve;
        }

        public static Object m(Scope scope, ParametersHolder parametersHolder, Class cls, Qualifier qualifier, ParametersHolder parametersHolder2) {
            scope.getClass();
            parametersHolder.getClass();
            return scope.resolve(Reflection.getOrCreateKotlinClass(cls), parametersHolder2, qualifier);
        }

        public static String m(String str, String str2) {
            return str + str2;
        }

        public static String m(String str, String str2, String str3, String str4) {
            return str + str2 + str3 + str4;
        }

        public static String m(String str, String str2, String str3, String str4, String str5) {
            return str + str2 + str3 + str4 + str5;
        }

        public static String m(String str, String str2, boolean z) {
            return str + z + str2;
        }

        public static SerializationException m(GapComposer gapComposer, int i, boolean z) {
            gapComposer.startReplaceGroup(i);
            gapComposer.end(z);
            return new SerializationException();
        }

        public static void m(Menu menu, int i, boolean z, int i2, boolean z2) {
            menu.findItem(i).setVisible(z);
            menu.findItem(i2).setVisible(z2);
        }

        public static Object m(Class cls, Scope scope, Qualifier qualifier, ParametersHolder parametersHolder) {
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(cls);
            scope.getClass();
            return scope.resolve(orCreateKotlinClass, parametersHolder, qualifier);
        }

        public static void m(StringBuilder sb, boolean z, String str, boolean z2, String str2) {
            sb.append(z);
            sb.append(str);
            sb.append(z2);
            sb.append(str2);
        }

        public static void m(ThemeSpacings themeSpacings, Modifier.Companion companion, float f, GapComposer gapComposer) {
            themeSpacings.getClass();
            OffsetKt.Spacer(gapComposer, androidx.compose.foundation.layout.SizeKt.m226height3ABfNKs(companion, f));
        }

        public static void m(BeanDefinition beanDefinition, Module module) {
            module.indexPrimaryType(new SingleInstanceFactory(beanDefinition));
        }

        public static boolean m(String str, String str2, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return bundle.containsKey(str2);
        }
    }
}
