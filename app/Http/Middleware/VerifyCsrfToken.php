<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = ['saveUser','signup','addBasicDetails','uploadImages','addReligionInformation','addUserLocation','addProfessionalInformation','addFamilyDetails','addLifeStyleDetails','addAboutFamilyDetails','addBasicPartnerPreferenceDetails','addProfessionalPreferences','addLocationPreferences','addPreferencesInDetail','editBaiscDetails','editReligionInformation','editUserLocation','editProfessionalInformation','editFamilyDetails','editLifeStyleDetails','editAboutFamilyDetails','editBasicPartnerPreferenceDetails','editProfessionalPreferences','editLocationPreferences','editPreferencesInDetail','editMobileNumber','addPersonalDetails','editPersonalDetails','uploadVideo','otp_verification','resend_otp','search_by_member_id','login_via_number','login_with_facebook','member_login','forget_password','set-password','app-logout','add_aadhar_no','latestUpdateUsersList','search','v1/*'
        //
    ];
}
