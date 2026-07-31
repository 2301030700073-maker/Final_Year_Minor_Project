package com.fsck.k9.activity;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.ActionBar;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.sqlite.SQLite;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import com.google.android.material.checkbox.MaterialCheckBox;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EditIdentity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LegacyAccountDto account;
    public EditText description;
    public EditText email;
    public final Lazy emailAddressValidator$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(5, this));
    public Identity identity;
    public int identityIndex;
    public boolean isSaveActionEnabled;
    public EditText name;
    public EditText replyTo;
    public EditText signature;
    public View signatureLayout;
    public MaterialCheckBox signatureUse;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Identity identity;
        super.onCreate(bundle);
        setLayout(R.layout.edit_identity);
        setTitle(R.string.edit_identity_title);
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.getClass();
        final int i = 1;
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        this.identityIndex = getIntent().getIntExtra("com.fsck.k9.EditIdentity_identity_index", -1);
        String stringExtra = getIntent().getStringExtra("com.fsck.k9.EditIdentity_account");
        if (stringExtra == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing account UUID");
            return;
        }
        LegacyAccountDto account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(stringExtra);
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Couldn't find account");
            return;
        }
        this.account = account;
        if (bundle != null) {
            identity = (Identity) SQLite.getParcelable(bundle, "com.fsck.k9.EditIdentity_identity", Identity.class);
            if (identity == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing state");
                return;
            }
        } else if (this.identityIndex != -1) {
            identity = (Identity) Utf8.SafeProcessor.getParcelableExtra(getIntent(), "com.fsck.k9.EditIdentity_identity", Identity.class);
            if (identity == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument");
                return;
            }
        } else {
            identity = new Identity((String) null, (String) null, (String) null, (String) null, false, 63);
        }
        this.identity = identity;
        View findViewById = findViewById(R.id.description);
        findViewById.getClass();
        this.description = (EditText) findViewById;
        View findViewById2 = findViewById(R.id.name);
        findViewById2.getClass();
        this.name = (EditText) findViewById2;
        View findViewById3 = findViewById(R.id.email);
        findViewById3.getClass();
        this.email = (EditText) findViewById3;
        View findViewById4 = findViewById(R.id.reply_to);
        findViewById4.getClass();
        this.replyTo = (EditText) findViewById4;
        View findViewById5 = findViewById(R.id.signature_use);
        findViewById5.getClass();
        this.signatureUse = (MaterialCheckBox) findViewById5;
        View findViewById6 = findViewById(R.id.signature);
        findViewById6.getClass();
        this.signature = (EditText) findViewById6;
        View findViewById7 = findViewById(R.id.signature_layout);
        findViewById7.getClass();
        this.signatureLayout = findViewById7;
        EditText editText = this.description;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("description");
            throw null;
        }
        Identity identity2 = this.identity;
        if (identity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        editText.setText(identity2.description);
        EditText editText2 = this.name;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
            throw null;
        }
        Identity identity3 = this.identity;
        if (identity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        editText2.setText(identity3.name);
        EditText editText3 = this.email;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("email");
            throw null;
        }
        Identity identity4 = this.identity;
        if (identity4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        editText3.setText(identity4.email);
        EditText editText4 = this.replyTo;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("replyTo");
            throw null;
        }
        Identity identity5 = this.identity;
        if (identity5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        editText4.setText(identity5.replyTo);
        MaterialCheckBox materialCheckBox = this.signatureUse;
        if (materialCheckBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signatureUse");
            throw null;
        }
        Identity identity6 = this.identity;
        if (identity6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        materialCheckBox.setChecked(identity6.signatureUse);
        MaterialCheckBox materialCheckBox2 = this.signatureUse;
        if (materialCheckBox2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signatureUse");
            throw null;
        }
        final int i2 = 0;
        materialCheckBox2.setOnCheckedChangeListener(new EditIdentity$$ExternalSyntheticLambda0(0, this));
        MaterialCheckBox materialCheckBox3 = this.signatureUse;
        if (materialCheckBox3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signatureUse");
            throw null;
        }
        if (materialCheckBox3.isChecked()) {
            EditText editText5 = this.signature;
            if (editText5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signature");
                throw null;
            }
            Identity identity7 = this.identity;
            if (identity7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("identity");
                throw null;
            }
            editText5.setText(identity7.signature);
        } else {
            View view = this.signatureLayout;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("signatureLayout");
                throw null;
            }
            view.setVisibility(8);
        }
        EditText editText6 = this.email;
        if (editText6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("email");
            throw null;
        }
        editText6.addTextChangedListener(new TextWatcher(this) { // from class: com.fsck.k9.activity.EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1
            public final /* synthetic */ EditIdentity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                int i3 = i2;
                EditIdentity editIdentity = this.this$0;
                switch (i3) {
                    case 0:
                        int i4 = EditIdentity.$r8$clinit;
                        editIdentity.validateFields();
                        break;
                    default:
                        int i5 = EditIdentity.$r8$clinit;
                        editIdentity.validateFields();
                        break;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                int i6 = i2;
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                int i6 = i2;
            }

            private final void beforeTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void beforeTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$2(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void onTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void onTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$2(int i3, int i4, int i5, CharSequence charSequence) {
            }
        });
        EditText editText7 = this.replyTo;
        if (editText7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("replyTo");
            throw null;
        }
        editText7.addTextChangedListener(new TextWatcher(this) { // from class: com.fsck.k9.activity.EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1
            public final /* synthetic */ EditIdentity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                int i3 = i;
                EditIdentity editIdentity = this.this$0;
                switch (i3) {
                    case 0:
                        int i4 = EditIdentity.$r8$clinit;
                        editIdentity.validateFields();
                        break;
                    default:
                        int i5 = EditIdentity.$r8$clinit;
                        editIdentity.validateFields();
                        break;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                int i6 = i;
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                int i6 = i;
            }

            private final void beforeTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void beforeTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$2(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void onTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$1(int i3, int i4, int i5, CharSequence charSequence) {
            }

            private final void onTextChanged$com$fsck$k9$activity$EditIdentity$setTextChangedListeners$$inlined$doAfterTextChanged$2(int i3, int i4, int i5, CharSequence charSequence) {
            }
        });
        validateFields();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.edit_identity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        if (menuItem.getItemId() != R.id.edit_identity_save) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.identity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        EditText editText = this.description;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("description");
            throw null;
        }
        String obj = editText.getText().toString();
        String str = !StringsKt.isBlank(obj) ? obj : null;
        EditText editText2 = this.email;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("email");
            throw null;
        }
        String obj2 = StringsKt.trim(editText2.getText().toString()).toString();
        EditText editText3 = this.name;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
            throw null;
        }
        String obj3 = editText3.getText().toString();
        String str2 = !StringsKt.isBlank(obj3) ? obj3 : null;
        MaterialCheckBox materialCheckBox = this.signatureUse;
        if (materialCheckBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signatureUse");
            throw null;
        }
        boolean isChecked = materialCheckBox.isChecked();
        EditText editText4 = this.signature;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("signature");
            throw null;
        }
        String obj4 = editText4.getText().toString();
        EditText editText5 = this.replyTo;
        if (editText5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("replyTo");
            throw null;
        }
        String obj5 = StringsKt.trim(editText5.getText().toString()).toString();
        this.identity = new Identity(str, str2, obj2, obj4, isChecked, !StringsKt.isBlank(obj5) ? obj5 : null);
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        List identities = legacyAccountDto.getIdentities();
        int i = this.identityIndex;
        if (i == -1) {
            Identity identity = this.identity;
            if (identity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("identity");
                throw null;
            }
            ((ArrayList) identities).add(identity);
        } else {
            ArrayList arrayList = (ArrayList) identities;
            arrayList.remove(i);
            int i2 = this.identityIndex;
            Identity identity2 = this.identity;
            if (identity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("identity");
                throw null;
            }
            arrayList.add(i2, identity2);
        }
        Preferences preferences = (Preferences) CloseableKt.get$default(Preferences.class);
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        preferences.saveAccount(legacyAccountDto2);
        finish();
        finish();
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.getClass();
        menu.findItem(R.id.edit_identity_save).setEnabled(this.isSaveActionEnabled);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        Identity identity = this.identity;
        if (identity != null) {
            bundle.putParcelable("com.fsck.k9.EditIdentity_identity", identity);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if (com.fsck.k9.EmailAddressValidator.isValidAddressOnly(r0) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void validateFields() {
        /*
            r4 = this;
            android.widget.EditText r0 = r4.email
            r1 = 0
            if (r0 == 0) goto L5b
            kotlin.Lazy r2 = r4.emailAddressValidator$delegate
            java.lang.Object r3 = r2.getValue()
            com.fsck.k9.EmailAddressValidator r3 = (com.fsck.k9.EmailAddressValidator) r3
            android.text.Editable r0 = r0.getText()
            r0.getClass()
            java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)
            r3.getClass()
            boolean r0 = com.fsck.k9.EmailAddressValidator.isValidAddressOnly(r0)
            if (r0 == 0) goto L54
            android.widget.EditText r0 = r4.replyTo
            if (r0 == 0) goto L4e
            android.text.Editable r1 = r0.getText()
            r1.getClass()
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 != 0) goto L4c
            java.lang.Object r1 = r2.getValue()
            com.fsck.k9.EmailAddressValidator r1 = (com.fsck.k9.EmailAddressValidator) r1
            android.text.Editable r0 = r0.getText()
            r0.getClass()
            java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)
            r1.getClass()
            boolean r0 = com.fsck.k9.EmailAddressValidator.isValidAddressOnly(r0)
            if (r0 == 0) goto L54
        L4c:
            r0 = 1
            goto L55
        L4e:
            java.lang.String r4 = "replyTo"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            throw r1
        L54:
            r0 = 0
        L55:
            r4.isSaveActionEnabled = r0
            r4.invalidateOptionsMenu()
            return
        L5b:
            java.lang.String r4 = "email"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.EditIdentity.validateFields():void");
    }
}
