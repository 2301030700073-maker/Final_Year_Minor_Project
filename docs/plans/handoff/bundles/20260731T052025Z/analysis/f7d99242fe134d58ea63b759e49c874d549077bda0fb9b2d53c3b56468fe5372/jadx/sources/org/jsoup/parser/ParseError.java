package org.jsoup.parser;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.TypedValue;
import androidx.compose.material.ripple.StateLayer;
import androidx.core.app.ActivityRecreator;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.preference.Preference;
import com.fsck.k9.mail.store.imap.ImapList;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import java.util.Iterator;
import java.util.List;
import kotlin.time.Instant;
import kotlin.time.InstantFormatException;
import kotlin.time.InstantKt;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParseError implements InstantParseResult {
    public final /* synthetic */ int $r8$classId;
    public String cursorPos;
    public String errorMsg;

    public ParseError(CharacterReader characterReader, String str, Object[] objArr) {
        this.$r8$classId = 0;
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = String.format(str, objArr);
    }

    public static int getColorFromAttr(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.textColorPrimary, typedValue, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{R.attr.textColorPrimary});
        int color = obtainStyledAttributes.getColor(0, -12627531);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static void highlightFallback(GeneralSettingsFragment generalSettingsFragment, final Preference preference) {
        int i;
        if (preference.mIcon == null && (i = preference.mIconResId) != 0) {
            preference.mIcon = Utf8.SafeProcessor.getDrawable(preference.mContext, i);
        }
        final Drawable drawable = preference.mIcon;
        final boolean z = preference.mIconSpaceReserved;
        Drawable drawable2 = Utf8.SafeProcessor.getDrawable(generalSettingsFragment.getContext(), com.fsck.k9.R.drawable.searchpreference_ic_arrow_right);
        drawable2.setColorFilter(getColorFromAttr(generalSettingsFragment.getContext()), PorterDuff.Mode.SRC_IN);
        boolean z2 = false;
        if (preference.mIcon != drawable2) {
            preference.mIcon = drawable2;
            preference.mIconResId = 0;
            preference.notifyChanged();
        }
        ActivityRecreator.AnonymousClass1 anonymousClass1 = new ActivityRecreator.AnonymousClass1(8, generalSettingsFragment, preference, z2);
        if (generalSettingsFragment.mList == null) {
            generalSettingsFragment.mSelectPreferenceRunnable = anonymousClass1;
        } else {
            anonymousClass1.run();
        }
        new Handler().postDelayed(new Runnable() { // from class: com.bytehamster.lib.preferencesearch.SearchPreferenceResult$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Preference preference2 = Preference.this;
                Drawable drawable3 = preference2.mIcon;
                Drawable drawable4 = drawable;
                if (drawable3 != drawable4) {
                    preference2.mIcon = drawable4;
                    preference2.mIconResId = 0;
                    preference2.notifyChanged();
                }
                boolean z3 = preference2.mIconSpaceReserved;
                boolean z4 = z;
                if (z3 != z4) {
                    preference2.mIconSpaceReserved = z4;
                    preference2.notifyChanged();
                }
            }
        }, 1000L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ParseError parse(List list) {
        ParseError parseError;
        Iterator it = list.iterator();
        do {
            parseError = null;
            if (!it.hasNext()) {
                break;
            }
            ImapResponse imapResponse = (ImapResponse) it.next();
            if (imapResponse.size() >= 4 && StateLayer.equalsIgnoreCase(imapResponse.get(0), "NAMESPACE") && imapResponse.isList(1)) {
                ImapList imapList = (ImapList) imapResponse.get(1);
                if (imapList.isList(0)) {
                    ImapList imapList2 = (ImapList) imapList.get(0);
                    if (imapList2.isString(0) && imapList2.isString(1)) {
                        String str = (String) imapList2.get(0);
                        String str2 = (String) imapList2.get(1);
                        ParseError parseError2 = new ParseError();
                        parseError2.cursorPos = str;
                        parseError2.errorMsg = str2;
                        parseError = parseError2;
                    }
                }
            }
        } while (parseError == null);
        return parseError;
    }

    @Override // kotlin.time.InstantParseResult
    public Instant toInstant() {
        throw new InstantFormatException(this.cursorPos + " when parsing an Instant from \"" + InstantKt.truncateForErrorMessage(this.errorMsg, 64) + '\"');
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "<" + this.cursorPos + ">: " + this.errorMsg;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ParseError(int i, String str, String str2) {
        this.$r8$classId = i;
        this.cursorPos = str;
        this.errorMsg = str2;
    }

    public ParseError(CharacterReader characterReader, String str) {
        this.$r8$classId = 0;
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = str;
    }

    public /* synthetic */ ParseError() {
        this.$r8$classId = 2;
    }
}
