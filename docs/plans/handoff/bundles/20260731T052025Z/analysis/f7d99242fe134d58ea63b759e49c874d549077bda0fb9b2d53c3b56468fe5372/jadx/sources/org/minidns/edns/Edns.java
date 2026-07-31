package org.minidns.edns;

import android.content.Context;
import android.content.res.Resources;
import androidx.viewpager.widget.ViewPager;
import com.fsck.k9.R;
import com.takisoft.colorpicker.ColorPickerDialog;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.minidns.record.OPT;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Edns {
    public final /* synthetic */ int $r8$classId;
    public boolean dnssecOk;
    public int flags;
    public Object optRecord;
    public Object terminalOutputCache;
    public int udpPayloadSize;
    public Object variablePart;
    public int version;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public boolean dnssecOk;
        public int udpPayloadSize;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum OptionCode {
        UNKNOWN(-1),
        NSID(3);

        public static final HashMap INVERSE_LUT = new HashMap(values().length);
        public final int asInt;

        static {
            for (OptionCode optionCode : values()) {
                INVERSE_LUT.put(Integer.valueOf(optionCode.asInt), optionCode);
            }
        }

        OptionCode(int i) {
            this.asInt = i;
        }
    }

    public Edns(Record record) {
        this.$r8$classId = 0;
        this.udpPayloadSize = record.clazzValue;
        long j = record.ttl;
        this.version = (int) ((j >> 16) & 255);
        this.flags = ((int) j) & 65535;
        this.dnssecOk = (j & 32768) > 0;
        this.variablePart = ((OPT) record.payloadData).variablePart;
        this.optRecord = record;
    }

    public ColorPickerDialog.Params build() {
        Resources resources = ((Context) this.terminalOutputCache).getResources();
        if (((int[]) this.variablePart) == null) {
            this.variablePart = resources.getIntArray(R.array.color_picker_default_colors);
        }
        ColorPickerDialog.Params params = new ColorPickerDialog.Params();
        params.mSelectedColorIndex = -1;
        boolean z = this.dnssecOk;
        int[] iArr = (int[]) this.variablePart;
        if (z) {
            int length = iArr.length;
            Integer[] numArr = new Integer[length];
            for (int i = 0; i < length; i++) {
                numArr[i] = Integer.valueOf(((int[]) this.variablePart)[i]);
            }
            Arrays.sort(numArr, new ViewPager.AnonymousClass1(21));
            int[] iArr2 = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                iArr2[i2] = numArr[i2].intValue();
            }
            params.mColors = iArr2;
        } else {
            params.mColors = iArr;
        }
        params.mColorContentDescriptions = (CharSequence[]) this.optRecord;
        params.mSelectedColor = this.udpPayloadSize;
        params.mColumns = this.version;
        int i3 = this.flags;
        params.mSize = i3;
        if (i3 == 1) {
            params.mSwatchLength = resources.getDimensionPixelSize(R.dimen.color_swatch_large);
            params.mMarginSize = resources.getDimensionPixelSize(R.dimen.color_swatch_margins_large);
            return params;
        }
        params.mSwatchLength = resources.getDimensionPixelSize(R.dimen.color_swatch_small);
        params.mMarginSize = resources.getDimensionPixelSize(R.dimen.color_swatch_margins_small);
        return params;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                List list = (List) this.variablePart;
                if (((String) this.terminalOutputCache) == null) {
                    StringBuilder sb = new StringBuilder("EDNS: version: ");
                    sb.append(this.version);
                    sb.append(", flags:");
                    if (this.dnssecOk) {
                        sb.append(" do");
                    }
                    sb.append("; udp: ");
                    sb.append(this.udpPayloadSize);
                    if (!list.isEmpty()) {
                        sb.append('\n');
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            EdnsOption ednsOption = (EdnsOption) it.next();
                            sb.append(ednsOption.getOptionCode());
                            sb.append(": ");
                            if (ednsOption.terminalOutputCache == null) {
                                ednsOption.terminalOutputCache = ednsOption.asTerminalOutputInternal().toString();
                            }
                            sb.append(ednsOption.terminalOutputCache);
                            if (it.hasNext()) {
                                sb.append('\n');
                            }
                        }
                    }
                    this.terminalOutputCache = sb.toString();
                }
                return (String) this.terminalOutputCache;
            default:
                return super.toString();
        }
    }

    public Edns(Builder builder) {
        this.$r8$classId = 0;
        this.udpPayloadSize = builder.udpPayloadSize;
        this.version = 0;
        boolean z = builder.dnssecOk;
        int i = z ? 32768 : 0;
        this.dnssecOk = z;
        this.flags = i;
        this.variablePart = Collections.EMPTY_LIST;
    }

    public Edns(Context context) {
        this.$r8$classId = 1;
        this.dnssecOk = false;
        this.flags = 2;
        this.terminalOutputCache = context;
    }
}
