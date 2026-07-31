package org.openintents.openpgp;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.takisoft.colorpicker.ColorPickerDialog;
import com.takisoft.datetimepicker.widget.DatePicker;
import com.takisoft.datetimepicker.widget.TimePicker$AbstractTimePickerDelegate$SavedState;
import com.takisoft.preferencex.ColorPickerPreference;
import com.takisoft.preferencex.DatePickerPreference;
import com.takisoft.preferencex.TimePickerPreference;
import com.tokenautocomplete.CharacterTokenizer;
import com.tokenautocomplete.TokenCompleteTextView;
import com.tokenautocomplete.Tokenizer;
import java.util.ArrayList;
import net.thunderbird.core.android.account.Identity;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpError implements Parcelable {
    public static final Parcelable.Creator<OpenPgpError> CREATOR = new AnonymousClass1(0);
    public int errorId = -1;
    public String message;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.openintents.openpgp.OpenPgpError$1, reason: invalid class name */
    public final class AnonymousClass1 implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            switch (this.$r8$classId) {
                case 0:
                    parcel.readInt();
                    int readInt = parcel.readInt();
                    int dataPosition = parcel.dataPosition();
                    OpenPgpError openPgpError = new OpenPgpError();
                    openPgpError.errorId = parcel.readInt();
                    openPgpError.message = parcel.readString();
                    parcel.setDataPosition(dataPosition + readInt);
                    return openPgpError;
                case 1:
                    ColorPickerDialog.Params params = new ColorPickerDialog.Params();
                    params.mSelectedColorIndex = -1;
                    params.mColors = parcel.createIntArray();
                    params.mSelectedColor = parcel.readInt();
                    params.mColumns = parcel.readInt();
                    params.mSize = parcel.readInt();
                    params.mSwatchLength = parcel.readInt();
                    params.mMarginSize = parcel.readInt();
                    params.mSelectedColorIndex = parcel.readInt();
                    return params;
                case 2:
                    return new DatePicker.AbstractDatePickerDelegate.SavedState(parcel);
                case 3:
                    return new TimePicker$AbstractTimePickerDelegate$SavedState(parcel);
                case 4:
                    return new ColorPickerPreference.SavedState(parcel);
                case 5:
                    return new DatePickerPreference.SavedState(parcel);
                case 6:
                    return new TimePickerPreference.SavedState(parcel);
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return new CharacterTokenizer(parcel.readArrayList(Character.class.getClassLoader()), parcel.readString());
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    TokenCompleteTextView.SavedState savedState = new TokenCompleteTextView.SavedState(parcel);
                    savedState.allowCollapse = parcel.readInt() != 0;
                    savedState.performBestGuess = parcel.readInt() != 0;
                    String readString = parcel.readString();
                    savedState.parcelableClassName = readString;
                    if ("Serializable".equals(readString)) {
                        savedState.baseObjects = (ArrayList) parcel.readSerializable();
                    } else {
                        try {
                            savedState.baseObjects = parcel.readArrayList(Class.forName(savedState.parcelableClassName).getClassLoader());
                        } catch (ClassNotFoundException e) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                            return null;
                        }
                    }
                    try {
                        savedState.tokenizer = (Tokenizer) parcel.readParcelable(Class.forName(parcel.readString()).getClassLoader());
                        if (parcel.dataAvail() > 0) {
                            savedState.contentText = parcel.readString();
                            savedState.tokenStarts = parcel.createIntArray();
                            savedState.tokenEnds = parcel.createIntArray();
                        }
                        return savedState;
                    } catch (ClassNotFoundException e2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                        return null;
                    }
                case 9:
                    parcel.getClass();
                    return new Identity(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString());
                case 10:
                    parcel.readInt();
                    int readInt2 = parcel.readInt();
                    int dataPosition2 = parcel.dataPosition();
                    AutocryptPeerUpdate autocryptPeerUpdate = new AutocryptPeerUpdate(parcel);
                    parcel.setDataPosition(dataPosition2 + readInt2);
                    return autocryptPeerUpdate;
                case 11:
                    int readInt3 = parcel.readInt();
                    int readInt4 = parcel.readInt();
                    int dataPosition3 = parcel.dataPosition();
                    OpenPgpDecryptionResult openPgpDecryptionResult = new OpenPgpDecryptionResult(parcel.readInt(), readInt3 > 1 ? parcel.createByteArray() : null, readInt3 > 1 ? parcel.createByteArray() : null);
                    parcel.setDataPosition(dataPosition3 + readInt4);
                    return openPgpDecryptionResult;
                case BasicTextKt.ShiftMeta /* 12 */:
                    int readInt5 = parcel.readInt();
                    int readInt6 = parcel.readInt();
                    int dataPosition4 = parcel.dataPosition();
                    OpenPgpMetadata openPgpMetadata = new OpenPgpMetadata();
                    openPgpMetadata.filename = parcel.readString();
                    openPgpMetadata.mimeType = parcel.readString();
                    openPgpMetadata.modificationTime = parcel.readLong();
                    openPgpMetadata.originalSize = parcel.readLong();
                    if (readInt5 >= 2) {
                        openPgpMetadata.charset = parcel.readString();
                    }
                    parcel.setDataPosition(dataPosition4 + readInt6);
                    return openPgpMetadata;
                default:
                    int readInt7 = parcel.readInt();
                    int readInt8 = parcel.readInt();
                    int dataPosition5 = parcel.dataPosition();
                    OpenPgpSignatureResult openPgpSignatureResult = new OpenPgpSignatureResult(parcel, readInt7);
                    parcel.setDataPosition(dataPosition5 + readInt8);
                    return openPgpSignatureResult;
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new OpenPgpError[i];
                case 1:
                    return new ColorPickerDialog.Params[i];
                case 2:
                    return new DatePicker.AbstractDatePickerDelegate.SavedState[i];
                case 3:
                    return new TimePicker$AbstractTimePickerDelegate$SavedState[i];
                case 4:
                    return new ColorPickerPreference.SavedState[i];
                case 5:
                    return new DatePickerPreference.SavedState[i];
                case 6:
                    return new TimePickerPreference.SavedState[i];
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return new CharacterTokenizer[i];
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return new TokenCompleteTextView.SavedState[i];
                case 9:
                    return new Identity[i];
                case 10:
                    return new AutocryptPeerUpdate[i];
                case 11:
                    return new OpenPgpDecryptionResult[i];
                case BasicTextKt.ShiftMeta /* 12 */:
                    return new OpenPgpMetadata[i];
                default:
                    return new OpenPgpSignatureResult[i];
            }
        }
    }

    public OpenPgpError(String str) {
        this.message = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "OpenPGP-Api Error (" + this.errorId + "): " + this.message;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(1);
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int dataPosition2 = parcel.dataPosition();
        parcel.writeInt(this.errorId);
        parcel.writeString(this.message);
        int dataPosition3 = parcel.dataPosition() - dataPosition2;
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3);
        parcel.setDataPosition(dataPosition3 + dataPosition2);
    }
}
