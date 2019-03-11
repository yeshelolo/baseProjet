<?php
/**
 * Created by PhpStorm.
 * User: rougelotugo
 * Date: 18/11/2018
 * Time: 20:53
 */

namespace Helpers;
use Helpers\Session;


class hError
{

    const BAD_PASSWORD          = 199;
    const NO_ERROR              = 200;
    const INSERT_OK             = 201;
    const NO_USER               = 601;
    const NO_RIGHT              = 602;
    const NO_MAP                = 603;
    const NOT_FOUND             = 604;
    const NOT_ALLOWED           = 605;
    const NO_RESIDENCE          = 607;
    const NO_FIELD              = 608;
    const NO_DATA               = 609;
    const NO_DATA_GIVEN         = 610;
    const LOT_NOT_FREE          = 611;
    const NO_LOT_FOUND          = 612;
    const DATE_UNVALID          = 613;
    const DATE_START_SMALLER    = 614;
    const ALLREADY_ASKED        = 615;
    const ALLREADY_RENTED       = 616;
    const DEMANDE_NOT_FOUND     = 617;
    const CAR_NOT_FOUND         = 618;
    const CAR_ALLREADY_TAKEN    = 619;
    const TOKEN_NOT_FOUND       = 620;
    const USER_ALREADY_EXIST    = 621;
    const USER_NOT_EXIST        = 622;

    private static $errors = [
        // Password Errors
        self::BAD_PASSWORD => "Mot de passe incorrect !",

        // Machine Errors
        self::NO_ERROR  => "OK",
        self::INSERT_OK => "INSERT",

        // IHM
        self::NO_USER               => "Aucun utilisateur trouvé !",
        self::NO_RIGHT              => "Pas de droit !",
        self::NO_MAP                => "Aucune carte trouvée !",
        self::NOT_FOUND             => "Action non trouvée !",
        self::NOT_ALLOWED           => "Action non autorisée !",
        self::NO_RESIDENCE          => "Résidence non trouvée !",
        self::NO_FIELD              => "Aucune correspondance en bd !",
        self::NO_DATA               => "Aucune données !",
        self::NO_DATA_GIVEN         => "Aucune données transmise !",
        self::LOT_NOT_FREE          => "Emplacement non disponible !",
        self::NO_LOT_FOUND          => "Emplacement non trouvé !",
        self::DATE_UNVALID          => "Dates invalides !",
        self::DATE_START_SMALLER    => "La date de fin est inférieur à celle de début",
        self::ALLREADY_ASKED        => "Vous avez déjà fait une demande pour cette emplacement aujourd'hui !",
        self::ALLREADY_RENTED       => "La place est déjà mise à disposition dans cette période",
        self::DEMANDE_NOT_FOUND     => "Aucune demande correspondante !",
        self::CAR_NOT_FOUND         => "Aucun véhicule correspondant !",
        self::CAR_ALLREADY_TAKEN    => "Véhicule déjà existant",
        self::TOKEN_NOT_FOUND       => "Demande d'initialisation non trouvée !",
        self::USER_ALREADY_EXIST    => "Utilisateur déjà existant !",
        self::USER_NOT_EXIST        => "L'identifiant n'existe pas !",
    ];

    public static function getMessage($error)
    {
        return self::$errors[$error];
    }

    public static function setMessage($error)
    {
        Session::set("danger" , self::getMessage($error));
    }
}