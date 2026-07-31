package org.wikipedia.donate.donationreminder;

import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectableOption {
    public final Number defaultValue;
    public final Function1 displayFormatter;
    public final Number maximumAmount;
    public final Number minimumAmount;
    public final List options;
    public final Number selectedValue;

    public /* synthetic */ SelectableOption(Number number, Number number2, Number number3, Number number4) {
        this(number, EmptyList.INSTANCE, number2, number3, number4, new ForYouCardKt$$ExternalSyntheticLambda1(4));
    }

    public static SelectableOption copy$default(SelectableOption selectableOption, Number number) {
        List list = selectableOption.options;
        Number number2 = selectableOption.maximumAmount;
        Number number3 = selectableOption.minimumAmount;
        Number number4 = selectableOption.defaultValue;
        Function1 function1 = selectableOption.displayFormatter;
        selectableOption.getClass();
        list.getClass();
        number2.getClass();
        number3.getClass();
        number4.getClass();
        function1.getClass();
        return new SelectableOption(number, list, number2, number3, number4, function1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectableOption)) {
            return false;
        }
        SelectableOption selectableOption = (SelectableOption) obj;
        return Intrinsics.areEqual(this.selectedValue, selectableOption.selectedValue) && Intrinsics.areEqual(this.options, selectableOption.options) && Intrinsics.areEqual(this.maximumAmount, selectableOption.maximumAmount) && Intrinsics.areEqual(this.minimumAmount, selectableOption.minimumAmount) && Intrinsics.areEqual(this.defaultValue, selectableOption.defaultValue) && Intrinsics.areEqual(this.displayFormatter, selectableOption.displayFormatter);
    }

    public final int hashCode() {
        return this.displayFormatter.hashCode() + ((this.defaultValue.hashCode() + ((this.minimumAmount.hashCode() + ((this.maximumAmount.hashCode() + Modifier.CC.m(this.selectedValue.hashCode() * 31, 31, this.options)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SelectableOption(selectedValue=" + this.selectedValue + ", options=" + this.options + ", maximumAmount=" + this.maximumAmount + ", minimumAmount=" + this.minimumAmount + ", defaultValue=" + this.defaultValue + ", displayFormatter=" + this.displayFormatter + ")";
    }

    public SelectableOption(Number number, List list, Number number2, Number number3, Number number4, Function1 function1) {
        this.selectedValue = number;
        this.options = list;
        this.maximumAmount = number2;
        this.minimumAmount = number3;
        this.defaultValue = number4;
        this.displayFormatter = function1;
    }
}
