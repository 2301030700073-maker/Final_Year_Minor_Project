package androidx.sqlite;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.SQLException;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.window.Api33Impl;
import androidx.core.content.res.ResourcesCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.IntNavType;
import androidx.navigation.NavType;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.sqlite.SQLite;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.Operation$State;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.utils.Api28Impl;
import androidx.work.impl.utils.NetworkRequestCompat;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.server.settings.ui.common.ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.preferences.Settings$SettingsDescription;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.zxing.BinaryBitmap;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.account.server.settings.ui.common.AuthenticationError;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import net.thunderbird.feature.account.server.settings.ui.common.BiometricAuthenticator;
import net.thunderbird.feature.account.server.settings.ui.common.BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RouteDatabase;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SQLite {
    public static ImageVector _folder;
    public static ImageVector _person;

    /* JADX WARN: Multi-variable type inference failed */
    public static final void ButtonSegmentedSingleChoice(final Function1 function1, final ImmutableList immutableList, final Function1 function12, final Modifier modifier, final Object obj, Composer composer, final int i) {
        Function1 function13;
        ImmutableList immutableList2;
        Function1 function14;
        Modifier modifier2;
        Object obj2;
        final int i2;
        function1.getClass();
        immutableList.getClass();
        function12.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1379258016);
        int i3 = (gapComposer.changedInstance(function1) ? 4 : 2) | i | (gapComposer.changed(immutableList) ? 32 : 16) | (gapComposer.changed(obj) ? 16384 : 8192);
        if (!gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            function13 = function1;
            immutableList2 = immutableList;
            function14 = function12;
            modifier2 = modifier;
            obj2 = obj;
            i2 = i;
            gapComposer.skipToGroupEnd();
        } else {
            if (((AbstractCollection) immutableList).isEmpty()) {
                RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    final int i4 = 0;
                    endRestartGroup.block = new Function2(function1, immutableList, function12, modifier, obj, i, i4) { // from class: app.k9mail.core.ui.compose.designsystem.atom.button.ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0
                        public final /* synthetic */ int $r8$classId;
                        public final /* synthetic */ Function1 f$0;
                        public final /* synthetic */ ImmutableList f$1;
                        public final /* synthetic */ Function1 f$2;
                        public final /* synthetic */ Modifier f$3;
                        public final /* synthetic */ Object f$4;

                        {
                            this.$r8$classId = i4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i5 = this.$r8$classId;
                            Unit unit = Unit.INSTANCE;
                            switch (i5) {
                                case 0:
                                    ((Integer) obj4).getClass();
                                    int updateChangedFlags = Updater.updateChangedFlags(3457);
                                    SQLite.ButtonSegmentedSingleChoice(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, (Composer) obj3, updateChangedFlags);
                                    break;
                                default:
                                    ((Integer) obj4).getClass();
                                    int updateChangedFlags2 = Updater.updateChangedFlags(3457);
                                    SQLite.ButtonSegmentedSingleChoice(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, (Composer) obj3, updateChangedFlags2);
                                    break;
                            }
                            return unit;
                        }
                    };
                    return;
                }
                return;
            }
            immutableList2 = immutableList;
            modifier2 = modifier;
            i2 = i;
            obj2 = obj;
            function14 = function12;
            function13 = function1;
            CardKt.m335SingleChoiceSegmentedButtonRowuFdPcIQ(modifier2, 0.0f, Expect_jvmKt.rememberComposableLambda(1578172789, new TextFieldCursorKt$$ExternalSyntheticLambda0(immutableList2, obj, function1, function12, 2), gapComposer), gapComposer, 390);
        }
        RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
        if (endRestartGroup2 != null) {
            final Function1 function15 = function13;
            final int i5 = 1;
            final Function1 function16 = function14;
            final ImmutableList immutableList3 = immutableList2;
            final Object obj3 = obj2;
            final Modifier modifier3 = modifier2;
            endRestartGroup2.block = new Function2(function15, immutableList3, function16, modifier3, obj3, i2, i5) { // from class: app.k9mail.core.ui.compose.designsystem.atom.button.ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0
                public final /* synthetic */ int $r8$classId;
                public final /* synthetic */ Function1 f$0;
                public final /* synthetic */ ImmutableList f$1;
                public final /* synthetic */ Function1 f$2;
                public final /* synthetic */ Modifier f$3;
                public final /* synthetic */ Object f$4;

                {
                    this.$r8$classId = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj32, Object obj4) {
                    int i52 = this.$r8$classId;
                    Unit unit = Unit.INSTANCE;
                    switch (i52) {
                        case 0:
                            ((Integer) obj4).getClass();
                            int updateChangedFlags = Updater.updateChangedFlags(3457);
                            SQLite.ButtonSegmentedSingleChoice(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, (Composer) obj32, updateChangedFlags);
                            break;
                        default:
                            ((Integer) obj4).getClass();
                            int updateChangedFlags2 = Updater.updateChangedFlags(3457);
                            SQLite.ButtonSegmentedSingleChoice(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, (Composer) obj32, updateChangedFlags2);
                            break;
                    }
                    return unit;
                }
            };
        }
    }

    public static final void PermissionDeniedContent(Function0 function0, Composer composer, int i) {
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1427203198);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            ScaffoldKt.ResponsiveContent(TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "PermissionDeniedContent"), Expect_jvmKt.rememberComposableLambda(927519412, new TextFieldImplKt$$ExternalSyntheticLambda9(i3, function0), gapComposer), gapComposer, 54, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(i, 3, function0);
        }
    }

    public static final void ProtectedPasswordInput(Function1 function1, Modifier modifier, String str, boolean z, String str2, PaddingValuesImpl paddingValuesImpl, Authenticator authenticator, Composer composer, int i) {
        int i2;
        PaddingValuesImpl paddingValuesImpl2;
        Authenticator authenticator2;
        int i3;
        Authenticator authenticator3;
        int i4;
        String stringResource;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1282591092);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(str) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(str2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            paddingValuesImpl2 = paddingValuesImpl;
            i2 |= gapComposer.changed(paddingValuesImpl2) ? 131072 : 65536;
        } else {
            paddingValuesImpl2 = paddingValuesImpl;
        }
        if ((1572864 & i) == 0) {
            i2 |= 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            gapComposer.startDefaults();
            int i5 = i & 1;
            Object obj = Composer.Companion.Empty;
            Continuation continuation = null;
            if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_server_settings_password_authentication_title);
                String stringResource3 = Operation$State.stringResource(gapComposer, R.string.account_server_settings_password_authentication_subtitle);
                stringResource2.getClass();
                stringResource3.getClass();
                Object obj2 = (Activity) gapComposer.consume(LocalActivityKt.LocalActivity);
                boolean changed = gapComposer.changed(obj2) | gapComposer.changed(stringResource2) | gapComposer.changed(stringResource3);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    AppCompatActivity appCompatActivity = obj2 instanceof AppCompatActivity ? (AppCompatActivity) obj2 : null;
                    rememberedValue = appCompatActivity != null ? new BiometricAuthenticator(appCompatActivity, stringResource2, stringResource3) : BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1.INSTANCE;
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                i3 = i2 & (-3670017);
                authenticator3 = (Authenticator) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-3670017);
                authenticator3 = authenticator;
            }
            gapComposer.endDefaults();
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.mutableStateOf$default(null);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            AuthenticationError authenticationError = (AuthenticationError) mutableState.getValue();
            if (authenticationError == null) {
                gapComposer.startReplaceGroup(-1641480662);
                gapComposer.end(false);
                stringResource = null;
            } else {
                gapComposer.startReplaceGroup(-1641480661);
                if (authenticationError.equals(AuthenticationError.NotAvailable.INSTANCE)) {
                    i4 = R.string.account_server_settings_password_authentication_screen_lock_required;
                } else if (authenticationError.equals(AuthenticationError.Failed.INSTANCE)) {
                    i4 = R.string.account_server_settings_password_authentication_failed;
                } else {
                    if (!authenticationError.equals(AuthenticationError.UnableToStart.INSTANCE)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return;
                    }
                    i4 = R.string.account_server_settings_password_authentication_unable_to_start;
                }
                stringResource = Operation$State.stringResource(gapComposer, i4);
                gapComposer.end(false);
            }
            AuthenticationError authenticationError2 = (AuthenticationError) mutableState.getValue();
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = new ProtectedPasswordInputKt$ProtectedPasswordInput$1$1(mutableState, continuation, 0);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer, authenticationError2, (Function2) rememberedValue3);
            TextInputKt.InputLayout(modifier, paddingValuesImpl2, str2, stringResource, Expect_jvmKt.rememberComposableLambda(1451363783, new AndroidMenu_androidKt$$ExternalSyntheticLambda2(str2, str, function1, authenticator3, z, mutableState), gapComposer), gapComposer, ((i3 >> 3) & 14) | 24576 | ((i3 >> 12) & 112) | ((i3 >> 6) & 896), 0);
            authenticator2 = authenticator3;
        } else {
            gapComposer.skipToGroupEnd();
            authenticator2 = authenticator;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwipeableRowKt$$ExternalSyntheticLambda4(function1, modifier, str, z, str2, paddingValuesImpl, authenticator2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0045  */
    /* renamed from: TextLabelMedium-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m815TextLabelMediumXl4FiYE(java.lang.String r29, androidx.compose.ui.Modifier r30, long r31, int r33, int r34, androidx.compose.runtime.Composer r35, int r36, int r37) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.m815TextLabelMediumXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final String access$subarrayContentToString(Object[] objArr, int i, int i2, AbstractMutableList abstractMutableList) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == abstractMutableList) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r10.bottom <= r12.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0071, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (r9 == 17) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r9 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        r11 = majorAxisDistance(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
    
        if (r9 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r9 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        if (r9 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r9 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r9 = r12.bottom;
        r10 = r10.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        if (r11 >= java.lang.Math.max(1, r9 - r10)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r9 = r12.right;
        r10 = r10.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r9 = r10.top;
        r10 = r12.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r9 = r10.left;
        r10 = r12.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0031, code lost:
    
        if (r10.right <= r12.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0038, code lost:
    
        if (r10.top >= r12.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003f, code lost:
    
        if (r10.left >= r12.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamBeats(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
            boolean r0 = beamsOverlap(r9, r10, r11)
            boolean r1 = beamsOverlap(r9, r10, r12)
            r2 = 0
            if (r1 != 0) goto L72
            if (r0 != 0) goto Lf
            goto L72
        Lf:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r3 = 33
            r4 = 66
            r5 = 17
            r6 = 1
            if (r9 == r5) goto L3b
            if (r9 == r3) goto L34
            if (r9 == r4) goto L2d
            if (r9 != r1) goto L29
            int r7 = r10.bottom
            int r8 = r12.top
            if (r7 > r8) goto L71
            goto L41
        L29:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r0)
            return r2
        L2d:
            int r7 = r10.right
            int r8 = r12.left
            if (r7 > r8) goto L71
            goto L41
        L34:
            int r7 = r10.top
            int r8 = r12.bottom
            if (r7 < r8) goto L71
            goto L41
        L3b:
            int r7 = r10.left
            int r8 = r12.right
            if (r7 < r8) goto L71
        L41:
            if (r9 == r5) goto L71
            if (r9 != r4) goto L46
            goto L71
        L46:
            int r11 = majorAxisDistance(r9, r10, r11)
            if (r9 == r5) goto L66
            if (r9 == r3) goto L61
            if (r9 == r4) goto L5c
            if (r9 != r1) goto L58
            int r9 = r12.bottom
            int r10 = r10.bottom
        L56:
            int r9 = r9 - r10
            goto L6b
        L58:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r0)
            return r2
        L5c:
            int r9 = r12.right
            int r10 = r10.right
            goto L56
        L61:
            int r9 = r10.top
            int r10 = r12.top
            goto L56
        L66:
            int r9 = r10.left
            int r10 = r12.left
            goto L56
        L6b:
            int r9 = java.lang.Math.max(r6, r9)
            if (r11 >= r9) goto L72
        L71:
            return r6
        L72:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.beamBeats(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamsOverlap(int r2, android.graphics.Rect r3, android.graphics.Rect r4) {
        /*
            r0 = 17
            r1 = 0
            if (r2 == r0) goto L25
            r0 = 33
            if (r2 == r0) goto L18
            r0 = 66
            if (r2 == r0) goto L25
            r0 = 130(0x82, float:1.82E-43)
            if (r2 != r0) goto L12
            goto L18
        L12:
            java.lang.String r2 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r2)
            return r1
        L18:
            int r2 = r4.right
            int r0 = r3.left
            if (r2 < r0) goto L33
            int r2 = r4.left
            int r3 = r3.right
            if (r2 > r3) goto L33
            goto L31
        L25:
            int r2 = r4.bottom
            int r0 = r3.top
            if (r2 < r0) goto L33
            int r2 = r4.top
            int r3 = r3.bottom
            if (r2 > r3) goto L33
        L31:
            r2 = 1
            return r2
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.beamsOverlap(int, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static final LinkedHashSet byteArrayToSetOfTriggers(byte[] bArr) {
        bArr.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int readInt = objectInputStream.readInt();
                    for (int i = 0; i < readInt; i++) {
                        Uri parse = Uri.parse(objectInputStream.readUTF());
                        boolean readBoolean = objectInputStream.readBoolean();
                        parse.getClass();
                        linkedHashSet.add(new Constraints.ContentUriTrigger(readBoolean, parse));
                    }
                    objectInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byteArrayInputStream.close();
            return linkedHashSet;
        } finally {
        }
    }

    /* renamed from: checkArithmetic--R2X_6o, reason: not valid java name */
    public static final void m816checkArithmeticR2X_6o(long j) {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if ((j & 1095216660480L) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
    }

    public static final boolean containsVideoCapture(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase != null && isVideoCapture(useCase)) {
                return true;
            }
        }
        return false;
    }

    public static HashMap convert(Map map, Map map2) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            TreeMap treeMap = (TreeMap) map2.get(str);
            Settings$SettingsDescription settings$SettingsDescription = (Settings$SettingsDescription) treeMap.get((Integer) treeMap.lastKey());
            if (settings$SettingsDescription != null) {
                hashMap.put(str, settings$SettingsDescription.toString(value));
            } else {
                Log.w("Settings.convert() called with a setting that should have been removed: %s", str);
            }
        }
        return hashMap;
    }

    public static Validate createCornerTreatment(int i) {
        return i != 0 ? i != 1 ? new RoundedCornerTreatment() : new CutCornerTreatment() : new RoundedCornerTreatment();
    }

    public static final FlowUtil$createFlow$$inlined$map$1 createFlow(RoomDatabase roomDatabase, boolean z, String[] strArr, Function1 function1) {
        Pair pair;
        InvalidationTracker invalidationTracker = roomDatabase.getInvalidationTracker();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTracker.implementation;
        triggerBasedInvalidationTracker.getClass();
        SetBuilder setBuilder = new SetBuilder();
        int i = 0;
        for (String str : strArr2) {
            LinkedHashMap linkedHashMap = triggerBasedInvalidationTracker.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set set = (Set) linkedHashMap.get(lowerCase);
            if (set != null) {
                setBuilder.addAll(set);
            } else {
                setBuilder.add(str);
            }
        }
        String[] strArr3 = (String[]) Validate.build(setBuilder).toArray(new String[0]);
        int length = strArr3.length;
        int[] iArr = new int[length];
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                pair = new Pair(strArr3, iArr);
                break;
            }
            String str2 = strArr3[i2];
            LinkedHashMap linkedHashMap2 = triggerBasedInvalidationTracker.tableIdLookup;
            String lowerCase2 = str2.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            Integer num = (Integer) linkedHashMap2.get(lowerCase2);
            if (num == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("There is no table with name ".concat(str2));
                pair = null;
                break;
            }
            iArr[i2] = num.intValue();
            i2++;
        }
        String[] strArr4 = (String[]) pair.first;
        int[] iArr2 = (int[]) pair.second;
        strArr4.getClass();
        iArr2.getClass();
        return new FlowUtil$createFlow$$inlined$map$1(FlowKt.buffer$default(new SafeFlow(i, new NavHostKt$NavHost$29$1(triggerBasedInvalidationTracker, iArr2, strArr4, (Continuation) null, 15)), -1), roomDatabase, z, function1);
    }

    public static final void execSQL(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            Cookie.Companion.closeFinally(prepare, null);
        } finally {
        }
    }

    public static NavType fromArgType(String str, String str2) {
        boolean equals = "integer".equals(str);
        IntNavType intNavType = NavType.StringType;
        NavType navType = equals ? NavType.IntType : "integer[]".equals(str) ? NavType.IntArrayType : "List<Int>".equals(str) ? NavType.IntListType : "long".equals(str) ? NavType.LongType : "long[]".equals(str) ? NavType.LongArrayType : "List<Long>".equals(str) ? NavType.LongListType : "boolean".equals(str) ? NavType.BoolType : "boolean[]".equals(str) ? NavType.BoolArrayType : "List<Boolean>".equals(str) ? NavType.BoolListType : "string".equals(str) ? intNavType : "string[]".equals(str) ? NavType.StringArrayType : "List<String>".equals(str) ? NavType.StringListType : "float".equals(str) ? NavType.FloatType : "float[]".equals(str) ? NavType.FloatArrayType : "List<Float>".equals(str) ? NavType.FloatListType : null;
        if (navType != null) {
            return navType;
        }
        if ("reference".equals(str)) {
            return NavType.ReferenceType;
        }
        if (str.length() == 0) {
            return intNavType;
        }
        try {
            String concat = (!StringsKt__StringsJVMKt.startsWith(str, ".", false) || str2 == null) ? str : str2.concat(str);
            boolean endsWith = StringsKt__StringsJVMKt.endsWith(str, "[]", false);
            if (endsWith) {
                concat = concat.substring(0, concat.length() - 2);
            }
            NavType parseSerializableOrParcelableType$navigation_common_release = parseSerializableOrParcelableType$navigation_common_release(Class.forName(concat), endsWith);
            if (parseSerializableOrParcelableType$navigation_common_release != null) {
                return parseSerializableOrParcelableType$navigation_common_release;
            }
            throw new IllegalArgumentException(concat.concat(" is not Serializable or Parcelable.").toString());
        } catch (ClassNotFoundException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    /* renamed from: getAndroidTypefaceStyle-FO1MlWM, reason: not valid java name */
    public static final int m817getAndroidTypefaceStyleFO1MlWM(FontWeight fontWeight, int i) {
        boolean z = Intrinsics.compare(fontWeight.weight, FontWeight.W600.weight) >= 0;
        boolean z2 = i == 1;
        if (z2 && z) {
            return 3;
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }

    public static float getFloatCompat(int i, Resources resources) {
        if (Build.VERSION.SDK_INT >= 29) {
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            return ResourcesCompat.Api29Impl.getFloat(i, resources);
        }
        ThreadLocal threadLocal2 = ResourcesCompat.sTempTypedValue;
        TypedValue typedValue = (TypedValue) threadLocal2.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal2.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.getParcelable(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (cls.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    public static final long getSp(double d) {
        return pack((float) d, 4294967296L);
    }

    public static final VideoStabilization getVideoStabilization(ArrayList arrayList, Function1 function1) {
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            int previewStabilizationMode = ((UseCaseConfig) function1.invoke((UseCase) it.next())).getPreviewStabilizationMode();
            if (previewStabilizationMode != 0) {
                if (i2 != previewStabilizationMode && i2 != 0) {
                    Utf8.SafeProcessor.w("UseCaseUtil", Config.CC.m("Unexpected configurations: Overwriting current previewStabilizationMode(", i2, ") with useCasePreviewStabilization(", previewStabilizationMode, ")!"));
                }
                i2 = previewStabilizationMode;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int videoStabilizationMode = ((UseCaseConfig) function1.invoke((UseCase) it2.next())).getVideoStabilizationMode();
            if (videoStabilizationMode != 0) {
                if (i != videoStabilizationMode && i != 0) {
                    Utf8.SafeProcessor.w("UseCaseUtil", Config.CC.m("Unexpected configurations: Overwriting current videoStabilizationMode(", i, ") with useCaseVideoStabilization(", videoStabilizationMode, ")!"));
                }
                i = videoStabilizationMode;
            }
        }
        VideoStabilization.Companion.getClass();
        return (i2 == 1 || i == 1) ? VideoStabilization.OFF : i2 == 2 ? VideoStabilization.PREVIEW : i == 2 ? VideoStabilization.ON : VideoStabilization.UNSPECIFIED;
    }

    public static final boolean hasLinks(AnnotatedString annotatedString) {
        int length = annotatedString.text.length();
        List list = annotatedString.annotations;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i);
                if ((range.item instanceof LinkAnnotation) && AnnotatedStringKt.intersect(0, length, range.start, range.end)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final BackoffPolicy intToBackoffPolicy(int i) {
        if (i == 0) {
            return BackoffPolicy.EXPONENTIAL;
        }
        if (i == 1) {
            return BackoffPolicy.LINEAR;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Could not convert ", " to BackoffPolicy"));
        return null;
    }

    public static final NetworkType intToNetworkType(int i) {
        if (i == 0) {
            return NetworkType.NOT_REQUIRED;
        }
        if (i == 1) {
            return NetworkType.CONNECTED;
        }
        if (i == 2) {
            return NetworkType.UNMETERED;
        }
        if (i == 3) {
            return NetworkType.NOT_ROAMING;
        }
        if (i == 4) {
            return NetworkType.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i == 5) {
            return NetworkType.TEMPORARILY_UNMETERED;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Could not convert ", " to NetworkType"));
        return null;
    }

    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int i) {
        if (i == 0) {
            return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i == 1) {
            return OutOfQuotaPolicy.DROP_WORK_REQUEST;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Could not convert ", " to OutOfQuotaPolicy"));
        return null;
    }

    public static final WorkInfo.State intToState(int i) {
        if (i == 0) {
            return WorkInfo.State.ENQUEUED;
        }
        if (i == 1) {
            return WorkInfo.State.RUNNING;
        }
        if (i == 2) {
            return WorkInfo.State.SUCCEEDED;
        }
        if (i == 3) {
            return WorkInfo.State.FAILED;
        }
        if (i == 4) {
            return WorkInfo.State.BLOCKED;
        }
        if (i == 5) {
            return WorkInfo.State.CANCELLED;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Could not convert ", " to State"));
        return null;
    }

    public static boolean isCandidate(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 > i3 || rect.left >= i3) && rect.left > rect2.left) {
                return true;
            }
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 > i5 || rect.top >= i5) && rect.top > rect2.top) {
                return true;
            }
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                return true;
            }
        } else {
            if (i != 130) {
                UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isVideoCapture(UseCase useCase) {
        useCase.getClass();
        if (useCase.mCurrentConfig.containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
            return useCase.mCurrentConfig.getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
        }
        Utf8.SafeProcessor.e("UseCaseUtil", useCase + " UseCase does not have capture type.");
        return false;
    }

    public static int majorAxisDistance(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return 0;
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return Math.max(0, i2 - i3);
    }

    public static int minorAxisDistance(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List moveGroup(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
        EmptyList emptyList;
        boolean z4;
        int i2;
        int i3;
        int groupSize = slotWriter.groupSize(i);
        int i4 = i + groupSize;
        int dataIndex = slotWriter.dataIndex(i);
        int dataIndex2 = slotWriter.dataIndex(i4);
        int i5 = dataIndex2 - dataIndex;
        boolean z5 = i >= 0 && (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 201326592) != 0;
        slotWriter2.insertGroups(groupSize);
        slotWriter2.insertSlots(i5, slotWriter2.currentGroup);
        if (slotWriter.groupGapStart < i4) {
            slotWriter.moveGroupGapTo(i4);
        }
        if (slotWriter.slotsGapStart < dataIndex2) {
            slotWriter.moveSlotGapTo(dataIndex2, i4);
        }
        int[] iArr = slotWriter2.groups;
        int i6 = slotWriter2.currentGroup;
        int i7 = i6 * 5;
        ArraysKt___ArraysKt.copyInto(i7, i * 5, i4 * 5, slotWriter.groups, iArr);
        Object[] objArr = slotWriter2.slots;
        int i8 = slotWriter2.currentSlot;
        System.arraycopy(slotWriter.slots, dataIndex, objArr, i8, i5);
        int i9 = slotWriter2.parent;
        iArr[i7 + 2] = i9;
        int i10 = i6 - i;
        int i11 = i6 + groupSize;
        int dataIndex3 = i8 - slotWriter2.dataIndex(iArr, i6);
        int i12 = slotWriter2.slotsGapOwner;
        int i13 = slotWriter2.slotsGapLen;
        int length = objArr.length;
        boolean z6 = z5;
        int i14 = i12;
        int i15 = i6;
        while (i15 < i11) {
            if (i15 != i6) {
                int i16 = (i15 * 5) + 2;
                iArr[i16] = iArr[i16] + i10;
            }
            int[] iArr2 = iArr;
            int dataIndex4 = slotWriter2.dataIndex(iArr, i15) + dataIndex3;
            if (i14 < i15) {
                i2 = i6;
                i3 = 0;
            } else {
                i2 = i6;
                i3 = slotWriter2.slotsGapStart;
            }
            iArr2[(i15 * 5) + 4] = SlotWriter.dataIndexToDataAnchor(dataIndex4, i3, i13, length);
            if (i15 == i14) {
                i14++;
            }
            i15++;
            i6 = i2;
            iArr = iArr2;
        }
        int[] iArr3 = iArr;
        slotWriter2.slotsGapOwner = i14;
        int access$locationOf = SlotTableKt.access$locationOf(slotWriter.anchors, i, slotWriter.getSize$runtime());
        int access$locationOf2 = SlotTableKt.access$locationOf(slotWriter.anchors, i4, slotWriter.getSize$runtime());
        if (access$locationOf < access$locationOf2) {
            ArrayList arrayList = slotWriter.anchors;
            ArrayList arrayList2 = new ArrayList(access$locationOf2 - access$locationOf);
            for (int i17 = access$locationOf; i17 < access$locationOf2; i17++) {
                GapAnchor gapAnchor = (GapAnchor) arrayList.get(i17);
                gapAnchor.location += i10;
                arrayList2.add(gapAnchor);
            }
            slotWriter2.anchors.addAll(SlotTableKt.access$locationOf(slotWriter2.anchors, slotWriter2.currentGroup, slotWriter2.getSize$runtime()), arrayList2);
            arrayList.subList(access$locationOf, access$locationOf2).clear();
            emptyList = arrayList2;
        } else {
            emptyList = EmptyList.INSTANCE;
        }
        if (!emptyList.isEmpty()) {
            HashMap hashMap = slotWriter.sourceInformationMap;
            HashMap hashMap2 = slotWriter2.sourceInformationMap;
            if (hashMap != null && hashMap2 != null) {
                int size = emptyList.size();
                for (int i18 = 0; i18 < size; i18++) {
                }
            }
        }
        int i19 = slotWriter2.parent;
        slotWriter2.sourceInformationOf$runtime(i9);
        int parent = slotWriter.parent(slotWriter.groups, i);
        if (!z3) {
            z4 = false;
        } else if (z) {
            boolean z7 = parent >= 0;
            if (z7) {
                slotWriter.startGroup();
                slotWriter.advanceBy(parent - slotWriter.currentGroup);
                slotWriter.startGroup();
            }
            slotWriter.advanceBy(i - slotWriter.currentGroup);
            boolean removeGroup = slotWriter.removeGroup();
            if (z7) {
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
            }
            z4 = removeGroup;
        } else {
            boolean removeGroups = slotWriter.removeGroups(i, groupSize);
            slotWriter.removeSlots(dataIndex, i5, i - 1);
            z4 = removeGroups;
        }
        if (z4) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        int i20 = slotWriter2.nodeCount;
        int i21 = iArr3[i7 + 1];
        slotWriter2.nodeCount = i20 + ((1073741824 & i21) != 0 ? 1 : i21 & 67108863);
        if (z2) {
            slotWriter2.currentGroup = i11;
            slotWriter2.currentSlot = i8 + i5;
        }
        if (z6) {
            slotWriter2.updateContainsMark(i9);
        }
        return emptyList;
    }

    public static final long pack(float f, long j) {
        long floatToRawIntBits = j | (Float.floatToRawIntBits(f) & 4294967295L);
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return floatToRawIntBits;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RouteDatabase parse(List list) {
        list.getClass();
        Iterator it = list.iterator();
        while (true) {
            RouteDatabase routeDatabase = null;
            while (it.hasNext()) {
                ImapResponse imapResponse = (ImapResponse) it.next();
                if (routeDatabase == null && imapResponse.tag == null) {
                    if (!imapResponse.isEmpty() && StateLayer.equalsIgnoreCase(imapResponse.get(0), "ENABLED")) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        int size = imapResponse.size();
                        for (int i = 1; i < size; i++) {
                            if (!imapResponse.isString(i)) {
                                break;
                            }
                            String str = (String) imapResponse.get(i);
                            str.getClass();
                            Locale locale = Locale.US;
                            locale.getClass();
                            String upperCase = str.toUpperCase(locale);
                            upperCase.getClass();
                            linkedHashSet.add(upperCase);
                        }
                        routeDatabase = new RouteDatabase(linkedHashSet);
                    }
                }
            }
            return routeDatabase;
        }
    }

    public static void parseModule(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e) {
                throwInstantiateGlideModuleException(cls, e);
                throw null;
            } catch (InstantiationException e2) {
                throwInstantiateGlideModuleException(cls, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                throwInstantiateGlideModuleException(cls, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                throwInstantiateGlideModuleException(cls, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    public static NavType parseSerializableOrParcelableType$navigation_common_release(Class cls, boolean z) {
        if (Parcelable.class.isAssignableFrom(cls)) {
            return z ? new NavType.ParcelableArrayType(cls) : new NavType.ParcelableType(cls);
        }
        if (Enum.class.isAssignableFrom(cls) && !z) {
            return new NavType.EnumType(cls);
        }
        if (Serializable.class.isAssignableFrom(cls)) {
            return z ? new NavType.SerializableArrayType(cls) : new NavType.SerializableType(cls);
        }
        return null;
    }

    public static final void resetRange(Object[] objArr, int i, int i2) {
        objArr.getClass();
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static void setParentAbsoluteElevation(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.drawableState.elevationOverlayProvider;
        if (elevationOverlayProvider == null || !elevationOverlayProvider.elevationOverlayEnabled) {
            return;
        }
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += ((View) parent).getElevation();
        }
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.parentAbsoluteElevation != f) {
            materialShapeDrawableState.parentAbsoluteElevation = f;
            materialShapeDrawable.updateZ();
        }
    }

    public static final int stateToInt(WorkInfo.State state) {
        state.getClass();
        int ordinal = state.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static void throwInstantiateGlideModuleException(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, reflectiveOperationException);
    }

    public static final void throwSQLiteException(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i);
        sb.append(", message: ".concat(str));
        throw new SQLException(sb.toString());
    }

    public static int toActivityTransitResId(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static final long toDefaultPort(IncomingProtocolType incomingProtocolType, ConnectionSecurity connectionSecurity) {
        incomingProtocolType.getClass();
        connectionSecurity.getClass();
        int ordinal = incomingProtocolType.ordinal();
        if (ordinal == 0) {
            int ordinal2 = connectionSecurity.ordinal();
            if (ordinal2 == 0 || ordinal2 == 1) {
                return 143L;
            }
            if (ordinal2 == 2) {
                return 993L;
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return 0L;
        }
        if (ordinal != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return 0L;
        }
        int ordinal3 = connectionSecurity.ordinal();
        if (ordinal3 == 0 || ordinal3 == 1) {
            return 110L;
        }
        if (ordinal3 == 2) {
            return 995L;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0L;
    }

    public static final NetworkRequestCompat toNetworkRequest$work_runtime_release(byte[] bArr) {
        bArr.getClass();
        if (Build.VERSION.SDK_INT < 28 || bArr.length == 0) {
            return new NetworkRequestCompat(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int readInt = objectInputStream.readInt();
                int[] iArr = new int[readInt];
                for (int i = 0; i < readInt; i++) {
                    iArr[i] = objectInputStream.readInt();
                }
                int readInt2 = objectInputStream.readInt();
                int[] iArr2 = new int[readInt2];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    iArr2[i2] = objectInputStream.readInt();
                }
                NetworkRequestCompat createNetworkRequestCompat$work_runtime_release = Api28Impl.createNetworkRequestCompat$work_runtime_release(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return createNetworkRequestCompat$work_runtime_release;
            } finally {
            }
        } finally {
        }
    }

    public static final ServerValidationContract$State toServerValidationState(AccountState accountState, boolean z) {
        return new ServerValidationContract$State(accountState.emailAddress, z ? accountState.incomingServerSettings : accountState.outgoingServerSettings, false, false, null, false);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m818toStringimpl(int i) {
        return CameraDevices$CC.m("OperatingMode(mode=", i, ')');
    }

    public static final String toStringAsFixed(float f) {
        if (Float.isNaN(f)) {
            return "NaN";
        }
        if (Float.isInfinite(f)) {
            return f < 0.0f ? "-Infinity" : "Infinity";
        }
        int max = Math.max(1, 0);
        float pow = (float) Math.pow(10.0d, max);
        float f2 = f * pow;
        int i = (int) f2;
        if (f2 - i >= 0.5f) {
            i++;
        }
        float f3 = i / pow;
        return max > 0 ? String.valueOf(f3) : String.valueOf((int) f3);
    }

    public static Object unwrapAs(CameraInfo cameraInfo, ClassReference classReference) {
        if (cameraInfo instanceof UnsafeWrapper) {
            return ((UnsafeWrapper) cameraInfo).unwrapAs(classReference);
        }
        if (!(cameraInfo instanceof CameraInfoInternal)) {
            return null;
        }
        CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        if (cameraInfoInternal.getImplementation() == cameraInfo) {
            return null;
        }
        CameraInfoInternal implementation = cameraInfoInternal.getImplementation();
        implementation.getClass();
        return unwrapAs(implementation, classReference);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x000d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap validate(int r9, java.util.Map r10, java.util.Map r11, boolean r12) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r10 = r10.entrySet()
            java.util.Iterator r10 = r10.iterator()
        Ld:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L8d
            java.lang.Object r1 = r10.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            java.util.TreeMap r2 = (java.util.TreeMap) r2
            r3 = 1
            int r4 = r9 + 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.util.SortedMap r4 = r2.headMap(r4)
            boolean r5 = r4.isEmpty()
            if (r5 == 0) goto L31
            goto Ld
        L31:
            java.lang.Object r4 = r4.lastKey()
            java.lang.Integer r4 = (java.lang.Integer) r4
            java.lang.Object r2 = r2.get(r4)
            com.fsck.k9.preferences.Settings$SettingsDescription r2 = (com.fsck.k9.preferences.Settings$SettingsDescription) r2
            if (r2 != 0) goto L40
            goto Ld
        L40:
            java.lang.Object r1 = r1.getKey()
            java.lang.String r1 = (java.lang.String) r1
            boolean r4 = r11.containsKey(r1)
            r5 = 2
            r6 = 0
            if (r4 != 0) goto L61
            if (r12 == 0) goto L53
            java.lang.String r4 = " Using default value."
            goto L55
        L53:
            java.lang.String r4 = ""
        L55:
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r5[r6] = r1
            r5[r3] = r4
            java.lang.String r3 = "Key \"%s\" wasn't found in the imported file.%s"
            net.thunderbird.core.logging.legacy.Log.v(r3, r5)
            goto L84
        L61:
            java.lang.Object r4 = r11.get(r1)
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r7 = r2.fromPrettyString(r4)     // Catch: com.fsck.k9.preferences.Settings$InvalidSettingValueException -> L6f
            r0.put(r1, r7)     // Catch: com.fsck.k9.preferences.Settings$InvalidSettingValueException -> L6f
            goto L85
        L6f:
            if (r12 == 0) goto L74
            java.lang.String r7 = "Using default value."
            goto L76
        L74:
            java.lang.String r7 = "Skipping."
        L76:
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r8[r6] = r1
            r8[r3] = r4
            r8[r5] = r7
            java.lang.String r3 = "Key \"%s\" has invalid value \"%s\" in imported file. %s"
            net.thunderbird.core.logging.legacy.Log.v(r3, r8)
        L84:
            r6 = r12
        L85:
            if (r6 == 0) goto Ld
            java.lang.Object r2 = r2.defaultValue
            r0.put(r1, r2)
            goto Ld
        L8d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.validate(int, java.util.Map, java.util.Map, boolean):java.util.HashMap");
    }

    public static TreeMap versions(BinaryBitmap... binaryBitmapArr) {
        TreeMap treeMap = new TreeMap();
        for (BinaryBitmap binaryBitmap : binaryBitmapArr) {
            treeMap.put((Integer) binaryBitmap.binarizer, (Settings$SettingsDescription) binaryBitmap.matrix);
        }
        return treeMap;
    }

    public static final long getSp(int i) {
        return pack(i, 4294967296L);
    }
}
