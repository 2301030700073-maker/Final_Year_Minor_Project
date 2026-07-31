package androidx.room;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextMotion;
import androidx.datastore.core.SingleProcessCoordinator;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.core.Preferences$Key;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.sqlite.SQLiteStatement;
import com.fsck.k9.R;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import kotlin.NotImplementedError;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ RoomDatabase$$ExternalSyntheticLambda0(RoomDatabase roomDatabase) {
        this.$r8$classId = 0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String valueOf;
        switch (this.$r8$classId) {
            case 0:
                ((DatabaseConfiguration) obj).getClass();
                throw new NotImplementedError(0);
            case 1:
                obj.getClass();
                return new EmojiSupportMatch(((Integer) obj).intValue());
            case 2:
                obj.getClass();
                return new LineBreak(((Integer) obj).intValue());
            case 3:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                TextMotion.Linearity linearity = (Intrinsics.areEqual(obj2, Boolean.FALSE) || obj2 == null) ? null : (TextMotion.Linearity) ((Function1) ParagraphKt.TextMotionLinearitySaver.referenceQueue).invoke(obj2);
                linearity.getClass();
                int i = linearity.value;
                Object obj3 = list.get(1);
                Boolean bool = obj3 != null ? (Boolean) obj3 : null;
                bool.getClass();
                return new TextMotion(i, bool.booleanValue());
            case 4:
                obj.getClass();
                return new TextMotion.Linearity(((Integer) obj).intValue());
            case 5:
                obj.getClass();
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                WeakCache weakCache = SaversKt.AnnotatedStringSaver;
                Boolean bool2 = Boolean.FALSE;
                AnnotatedString annotatedString = (Intrinsics.areEqual(obj4, bool2) || obj4 == null) ? null : (AnnotatedString) ((Function1) weakCache.referenceQueue).invoke(obj4);
                annotatedString.getClass();
                Object obj5 = list2.get(1);
                int i2 = TextRange.$r8$clinit;
                TextRange textRange = (Intrinsics.areEqual(obj5, bool2) || obj5 == null) ? null : (TextRange) ((Function1) SaversKt.TextRangeSaver.referenceQueue).invoke(obj5);
                textRange.getClass();
                return new TextFieldValue(annotatedString, textRange.packedValue, (TextRange) null);
            case 6:
                File file = (File) obj;
                file.getClass();
                String absolutePath = file.getCanonicalFile().getAbsolutePath();
                absolutePath.getClass();
                return new SingleProcessCoordinator(absolutePath);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Context) obj).getClass();
                return EmptyList.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                Object value = entry.getValue();
                if (value instanceof byte[]) {
                    StringBuilder sb = new StringBuilder();
                    sb.append((CharSequence) "[");
                    int i3 = 0;
                    for (byte b : (byte[]) value) {
                        i3++;
                        if (i3 > 1) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append((CharSequence) String.valueOf((int) b));
                    }
                    sb.append((CharSequence) "]");
                    valueOf = sb.toString();
                } else {
                    valueOf = String.valueOf(entry.getValue());
                }
                return "  " + ((Preferences$Key) entry.getKey()).name + " = " + valueOf;
            case 9:
                Context context = (Context) obj;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case 10:
                Context context2 = (Context) obj;
                context2.getClass();
                if (context2 instanceof ContextWrapper) {
                    return ((ContextWrapper) context2).getBaseContext();
                }
                return null;
            case 11:
                ((CreationExtras) obj).getClass();
                return new NavControllerViewModel();
            case BasicTextKt.ShiftMeta /* 12 */:
                Context context3 = (Context) obj;
                context3.getClass();
                ContextWrapper contextWrapper = context3 instanceof ContextWrapper ? (ContextWrapper) context3 : null;
                if (contextWrapper != null) {
                    return contextWrapper.getBaseContext();
                }
                return null;
            case 13:
                Context context4 = (Context) obj;
                context4.getClass();
                if (context4 instanceof Activity) {
                    return (Activity) context4;
                }
                return null;
            case 14:
                NavDestination navDestination = (NavDestination) obj;
                navDestination.getClass();
                return navDestination.parent;
            case OffsetKt.Horizontal /* 15 */:
                NavDestination navDestination2 = (NavDestination) obj;
                navDestination2.getClass();
                if (!(navDestination2 instanceof NavGraph)) {
                    return null;
                }
                RawField rawField = ((NavGraph) navDestination2).impl;
                return rawField.findNode$navigation_common_release(rawField.delimiterIdx);
            case 16:
                View view = (View) obj;
                view.getClass();
                Object parent = view.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            case 17:
                View view2 = (View) obj;
                view2.getClass();
                Object tag = view2.getTag(R.id.nav_controller_view_tag);
                if (tag instanceof WeakReference) {
                    return (NavHostController) ((WeakReference) tag).get();
                }
                if (tag instanceof NavHostController) {
                    return (NavHostController) tag;
                }
                return null;
            case 18:
                return new BackStackEntryIdViewModel(ViewModelKt.createSavedStateHandle((CreationExtras) obj));
            case 19:
                return EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(700, 0, null, 6), 2);
            case 20:
                return EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(700, 0, null, 6), 2);
            case 21:
                return EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(700, 0, null, 6), 2);
            case 22:
                return EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(700, 0, null, 6), 2);
            case 23:
                return ((NavBackStackEntry) obj).id;
            case 24:
                ((CreationExtras) obj).getClass();
                return new FragmentNavigator.ClearEntryStateViewModel();
            case 25:
                CreationExtras creationExtras = (CreationExtras) obj;
                creationExtras.getClass();
                return new NavBackStackEntryImpl.SavedStateViewModel(ViewModelKt.createSavedStateHandle(creationExtras));
            case 26:
                NavDestination navDestination3 = (NavDestination) obj;
                navDestination3.getClass();
                NavGraph navGraph = navDestination3.parent;
                if (navGraph == null || navGraph.impl.delimiterIdx != navDestination3.impl.id) {
                    return null;
                }
                return navGraph;
            case 27:
                NavDestination navDestination4 = (NavDestination) obj;
                navDestination4.getClass();
                NavGraph navGraph2 = navDestination4.parent;
                if (navGraph2 == null || navGraph2.impl.delimiterIdx != navDestination4.impl.id) {
                    return null;
                }
                return navGraph2;
            case 28:
                NavDestination navDestination5 = (NavDestination) obj;
                navDestination5.getClass();
                return Integer.valueOf(navDestination5.impl.id);
            default:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                sQLiteStatement.getClass();
                return Boolean.valueOf(sQLiteStatement.step());
        }
    }

    public /* synthetic */ RoomDatabase$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }
}
