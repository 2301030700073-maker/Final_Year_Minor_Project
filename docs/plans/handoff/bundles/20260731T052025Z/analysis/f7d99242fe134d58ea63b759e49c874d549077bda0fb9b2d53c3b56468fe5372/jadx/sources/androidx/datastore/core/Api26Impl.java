package androidx.datastore.core;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.feature.widget.shortcut.LauncherShortcutActivity;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import j$.io.FileRetargetClass;
import j$.nio.file.Files;
import j$.nio.file.StandardCopyOption;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.NotImplementedError;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api26Impl {
    public static void applyIconTint(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                drawable.setTintList(colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
                drawable.setTintList(ColorStateList.valueOf(colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static ImageView.ScaleType convertScaleType(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 5 ? i != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static final AndroidFillableData createFromBoolean(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new AndroidFillableData(AutofillValue.forToggle(z));
        }
        return null;
    }

    public static final AndroidFillableData createFromText(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new AndroidFillableData(AutofillValue.forText(charSequence));
        }
        return null;
    }

    public static Intent createShortcutResultIntent(LauncherShortcutActivity launcherShortcutActivity, ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap bitmap;
        Object obj;
        Resources resources;
        Intent createShortcutResultIntent = Build.VERSION.SDK_INT >= 26 ? ((ShortcutManager) launcherShortcutActivity.getSystemService(ShortcutManager.class)).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo()) : null;
        if (createShortcutResultIntent == null) {
            createShortcutResultIntent = new Intent();
        }
        Intent[] intentArr = shortcutInfoCompat.mIntents;
        createShortcutResultIntent.putExtra("android.intent.extra.shortcut.INTENT", intentArr[intentArr.length - 1]).putExtra("android.intent.extra.shortcut.NAME", shortcutInfoCompat.mLabel.toString());
        IconCompat iconCompat = shortcutInfoCompat.mIcon;
        if (iconCompat != null) {
            LauncherShortcutActivity launcherShortcutActivity2 = shortcutInfoCompat.mContext;
            if (iconCompat.mType == 2 && (obj = iconCompat.mObj1) != null) {
                String str = (String) obj;
                if (str.contains(":")) {
                    String str2 = str.split(":", -1)[1];
                    String str3 = str2.split("/", -1)[0];
                    String str4 = str2.split("/", -1)[1];
                    String str5 = str.split(":", -1)[0];
                    if ("0_resource_name_obfuscated".equals(str4)) {
                        Log.i("IconCompat", "Found obfuscated resource, not trying to update resource id for it");
                    } else {
                        String resPackage = iconCompat.getResPackage();
                        if ("android".equals(resPackage)) {
                            resources = Resources.getSystem();
                        } else {
                            PackageManager packageManager = launcherShortcutActivity2.getPackageManager();
                            try {
                                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(resPackage, 8192);
                                if (applicationInfo != null) {
                                    resources = packageManager.getResourcesForApplication(applicationInfo);
                                }
                            } catch (PackageManager.NameNotFoundException e) {
                                Log.e("IconCompat", "Unable to find pkg=" + resPackage + " for icon", e);
                            }
                            resources = null;
                        }
                        int identifier = resources.getIdentifier(str4, str3, str5);
                        if (iconCompat.mInt1 != identifier) {
                            Log.i("IconCompat", "Id has changed for " + resPackage + " " + str);
                            iconCompat.mInt1 = identifier;
                        }
                    }
                }
            }
            int i = iconCompat.mType;
            if (i == 1) {
                bitmap = (Bitmap) iconCompat.mObj1;
            } else if (i == 2) {
                try {
                    createShortcutResultIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(launcherShortcutActivity2.createPackageContext(iconCompat.getResPackage(), 0), iconCompat.mInt1));
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException("Can't find package " + iconCompat.mObj1, e2);
                }
            } else {
                if (i != 5) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Icon type not supported for intent shortcuts");
                    return null;
                }
                bitmap = IconCompat.createLegacyIconFromAdaptiveIcon((Bitmap) iconCompat.mObj1, true);
            }
            createShortcutResultIntent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
        }
        return createShortcutResultIntent;
    }

    public static Icon createWithAdaptiveBitmap(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static void generateConfigDelta_colorMode(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        i = configuration.colorMode;
        int i7 = i & 3;
        i2 = configuration2.colorMode;
        int i8 = i2 & 3;
        if (i7 != i8) {
            i6 = configuration3.colorMode;
            configuration3.colorMode = i6 | i8;
        }
        i3 = configuration.colorMode;
        int i9 = i3 & 12;
        i4 = configuration2.colorMode;
        int i10 = i4 & 12;
        if (i9 != i10) {
            i5 = configuration3.colorMode;
            configuration3.colorMode = i5 | i10;
        }
    }

    public static AutofillId getAutofillId(View view) {
        return view.getAutofillId();
    }

    public static PackageInfo getCurrentWebViewPackage() {
        return WebView.getCurrentWebViewPackage();
    }

    public static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }

    public static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledVerticalScrollFactor();
    }

    public static long getTotalDuration(Animator animator) {
        return animator.getTotalDuration();
    }

    public static boolean move(File file, File file2) {
        try {
            Files.move(FileRetargetClass.toPath(file), FileRetargetClass.toPath(file2), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static final void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession, AtomicRef atomicRef) {
        cameraCaptureSession.getClass();
        atomicRef.getClass();
        Iterator it = ((List) atomicRef.value).iterator();
        while (it.hasNext()) {
            ((CameraCaptureSession.StateCallback) it.next()).onCaptureQueueEmpty(cameraCaptureSession);
        }
    }

    public static final void performAutofill(AndroidAutofill androidAutofill, SparseArray sparseArray) {
        if (androidAutofill.autofillTree.children.isEmpty()) {
            return;
        }
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            AutofillValue m = StreamSharing$$ExternalSyntheticLambda0.m(sparseArray.get(keyAt));
            if (m.isText()) {
                AutofillTree autofillTree = androidAutofill.autofillTree;
                m.getTextValue().toString();
                if (autofillTree.children.get(Integer.valueOf(keyAt)) != null) {
                    DBUtil$$ExternalSyntheticBUOutline0.m();
                    return;
                }
            } else {
                if (m.isDate()) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
                }
                if (m.isList()) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                }
                if (m.isToggle()) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                }
            }
        }
    }

    public static void refreshIconDrawableState(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = drawable.mutate();
        mutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return (i & 4) != 0 ? context.registerReceiver(broadcastReceiver, intentFilter, TraceApi29Impl.obtainAndCheckReceiverPermission(context), null) : context.registerReceiver(broadcastReceiver, intentFilter, null, null, 0);
    }

    public static void setAlphabeticShortcut(MenuItem menuItem, char c, int i) {
        menuItem.setAlphabeticShortcut(c, i);
    }

    public static void setContentDescription(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setContentDescription(charSequence);
    }

    public static void setCurrentPlayTime(Animator animator, long j) {
        ((AnimatorSet) animator).setCurrentPlayTime(j);
    }

    public static void setIconClickable(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = onLongClickListener != null;
        boolean z2 = hasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        if (Build.VERSION.SDK_INT >= 26 || !z2 || z) {
            checkableImageButton.setLongClickable(z);
        }
        checkableImageButton.setImportantForAccessibility(z2 ? 1 : 2);
    }

    public static void setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
        menuItem.setIconTintList(colorStateList);
    }

    public static void setIconTintMode(MenuItem menuItem, PorterDuff.Mode mode) {
        menuItem.setIconTintMode(mode);
    }

    public static void setNumericShortcut(MenuItem menuItem, char c, int i) {
        menuItem.setNumericShortcut(c, i);
    }

    public static void setTooltipText(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setTooltipText(charSequence);
    }

    public static void startForegroundService(Context context, Intent intent) {
        context.startForegroundService(intent);
    }

    public static final void toggleHDRPlus(Preview.Builder builder, ImageCaptureConfig imageCaptureConfig) {
        Object retrieveOption;
        CaptureRequest.Key key;
        CaptureRequest.Key key2;
        MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
        imageCaptureConfig.getClass();
        if (((ImageCapturePixelHDRPlusQuirk) DeviceQuirks.getAll().get(ImageCapturePixelHDRPlusQuirk.class)) == null) {
            return;
        }
        AutoValue_Config_Option autoValue_Config_Option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (imageCaptureConfig.containsOption(autoValue_Config_Option)) {
            retrieveOption = imageCaptureConfig.getConfig().retrieveOption(autoValue_Config_Option);
            int intValue = ((Integer) retrieveOption).intValue();
            if (intValue == 0) {
                key = CaptureRequest.CONTROL_ENABLE_ZSL;
                key.getClass();
                mutableOptionsBundle.insertOption(Data.Companion.createCaptureRequestOption(key), Boolean.TRUE);
                return;
            }
            if (intValue != 1) {
                return;
            }
            key2 = CaptureRequest.CONTROL_ENABLE_ZSL;
            key2.getClass();
            mutableOptionsBundle.insertOption(Data.Companion.createCaptureRequestOption(key2), Boolean.FALSE);
        }
    }

    public static void updateIconTooltip(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener, CharSequence charSequence) {
        if (!checkableImageButton.isFocusable()) {
            charSequence = null;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            checkableImageButton.setTooltipText(charSequence);
        } else if (onLongClickListener == null) {
            Operation$State.setTooltipText(checkableImageButton, charSequence);
        }
    }
}
