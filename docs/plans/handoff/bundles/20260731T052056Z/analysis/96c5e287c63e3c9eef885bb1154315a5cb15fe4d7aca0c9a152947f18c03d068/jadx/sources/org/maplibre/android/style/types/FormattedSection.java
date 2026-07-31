package org.maplibre.android.style.types;

import androidx.compose.animation.core.Animation;
import java.util.Arrays;
import java.util.HashMap;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FormattedSection {
    private Number fontScale;
    private String[] fontStack;
    private String text;
    private String textColor;

    public FormattedSection(String str, Number number, String[] strArr, String str2) {
        this.text = str;
        this.fontScale = number;
        this.fontStack = strArr;
        this.textColor = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FormattedSection formattedSection = (FormattedSection) obj;
            String str = this.text;
            String str2 = formattedSection.text;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            Number number = this.fontScale;
            Number number2 = formattedSection.fontScale;
            if (number == null ? number2 != null : !number.equals(number2)) {
                return false;
            }
            if (!Arrays.equals(this.fontStack, formattedSection.fontStack)) {
                return false;
            }
            String str3 = this.textColor;
            String str4 = formattedSection.textColor;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    public Number getFontScale() {
        return this.fontScale;
    }

    public String[] getFontStack() {
        return this.fontStack;
    }

    public String getText() {
        return this.text;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this.text;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Number number = this.fontScale;
        int hashCode2 = (((hashCode + (number != null ? number.hashCode() : 0)) * 31) + Arrays.hashCode(this.fontStack)) * 31;
        String str2 = this.textColor;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public void setFontScale(Number number) {
        this.fontScale = number;
    }

    public void setFontStack(String[] strArr) {
        this.fontStack = strArr;
    }

    public void setTextColor(int i) {
        this.textColor = ReadingListFragment.MultiSelectCallback.colorToRgbaString(i);
    }

    public Object[] toArray() {
        HashMap hashMap = new HashMap();
        hashMap.put("font-scale", this.fontScale);
        hashMap.put("text-font", this.fontStack);
        hashMap.put("text-color", this.textColor);
        return new Object[]{this.text, hashMap};
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FormattedSection{text='");
        sb.append(this.text);
        sb.append("', fontScale=");
        sb.append(this.fontScale);
        sb.append(", fontStack=");
        sb.append(Arrays.toString(this.fontStack));
        sb.append(", textColor='");
        return Animation.CC.m(sb, this.textColor, "'}");
    }

    public void setTextColor(String str) {
        this.textColor = str;
    }

    public void setTextColor(Object obj) {
        setTextColor((String) obj);
    }

    public FormattedSection(String str) {
        this(str, null, null, null);
    }

    @Deprecated
    public FormattedSection(String str, Number number, String[] strArr) {
        this(str, number, strArr, null);
    }

    @Deprecated
    public FormattedSection(String str, Number number) {
        this(str, number, null, null);
    }

    @Deprecated
    public FormattedSection(String str, String[] strArr) {
        this(str, null, strArr, null);
    }
}
