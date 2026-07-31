package androidx.compose.foundation.text;

import android.R;
import android.os.Build;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuItems {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextContextMenuItems[] $VALUES;
    public static final TextContextMenuItems Autofill;
    public static final TextContextMenuItems Copy;
    public static final TextContextMenuItems Cut;
    public static final TextContextMenuItems Paste;
    public static final TextContextMenuItems SelectAll;
    private final int drawableId;
    private final Object key;
    private final int stringId;

    static {
        TextContextMenuItems textContextMenuItems = new TextContextMenuItems("Cut", 0, TextContextMenuKeys.CutKey, R.string.cut, R.attr.actionModeCutDrawable);
        Cut = textContextMenuItems;
        TextContextMenuItems textContextMenuItems2 = new TextContextMenuItems("Copy", 1, TextContextMenuKeys.CopyKey, R.string.copy, R.attr.actionModeCopyDrawable);
        Copy = textContextMenuItems2;
        TextContextMenuItems textContextMenuItems3 = new TextContextMenuItems("Paste", 2, TextContextMenuKeys.PasteKey, R.string.paste, R.attr.actionModePasteDrawable);
        Paste = textContextMenuItems3;
        TextContextMenuItems textContextMenuItems4 = new TextContextMenuItems("SelectAll", 3, TextContextMenuKeys.SelectAllKey, R.string.selectAll, R.attr.actionModeSelectAllDrawable);
        SelectAll = textContextMenuItems4;
        TextContextMenuItems textContextMenuItems5 = new TextContextMenuItems("Autofill", 4, TextContextMenuKeys.AutofillKey, Build.VERSION.SDK_INT <= 26 ? org.wikipedia.R.string.androidx_compose_foundation_autofill : R.string.autofill, 0);
        Autofill = textContextMenuItems5;
        TextContextMenuItems[] textContextMenuItemsArr = {textContextMenuItems, textContextMenuItems2, textContextMenuItems3, textContextMenuItems4, textContextMenuItems5};
        $VALUES = textContextMenuItemsArr;
        $ENTRIES = new EnumEntriesList(textContextMenuItemsArr);
    }

    public TextContextMenuItems(String str, int i, Object obj, int i2, int i3) {
        this.key = obj;
        this.stringId = i2;
        this.drawableId = i3;
    }

    public static TextContextMenuItems valueOf(String str) {
        return (TextContextMenuItems) Enum.valueOf(TextContextMenuItems.class, str);
    }

    public static TextContextMenuItems[] values() {
        return (TextContextMenuItems[]) $VALUES.clone();
    }

    /* renamed from: getDrawableId-3I4p1mQ, reason: not valid java name */
    public final int m191getDrawableId3I4p1mQ() {
        return this.drawableId;
    }

    public final Object getKey() {
        return this.key;
    }

    /* renamed from: getStringId-9Hzcbyc, reason: not valid java name */
    public final int m192getStringId9Hzcbyc() {
        return this.stringId;
    }
}
